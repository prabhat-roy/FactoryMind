// FactoryMind PLC adapter - reads from S7-300/S7-1500/AB ControlLogix and republishes via MQTT.
#include <iostream>
#include <chrono>
#include <thread>
#include "s7_driver.hpp"
#include "mqtt_publisher.hpp"

int main(int argc, char** argv) {
    factorymind::S7Driver plc;
    factorymind::MqttPublisher mqtt;

    if (!plc.connect(std::getenv("PLC_HOST"))) {
        std::cerr << "PLC connect failed\n";
        return 1;
    }
    if (!mqtt.connect(std::getenv("MQTT_BROKER"))) {
        std::cerr << "MQTT connect failed\n";
        return 1;
    }

    auto interval = std::chrono::milliseconds(100);
    while (true) {
        auto sample = plc.read_all();
        mqtt.publish("factorymind/iiot/" + sample.equipment_id, sample.to_json());
        std::this_thread::sleep_for(interval);
    }
}
