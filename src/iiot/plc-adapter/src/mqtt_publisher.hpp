#pragma once
#include <string>

namespace factorymind {
class MqttPublisher {
public:
    bool connect(const char* broker);
    bool publish(const std::string& topic, const std::string& payload);
};
}
