#include "mqtt_publisher.hpp"

namespace factorymind {

bool MqttPublisher::connect(const char* broker) {
    (void)broker;
    return true;
}

bool MqttPublisher::publish(const std::string& topic, const std::string& payload) {
    (void)topic;
    (void)payload;
    return true;
}

}
