#include "s7_driver.hpp"
#include <chrono>

namespace factorymind {

bool S7Driver::connect(const char* host) {
    (void)host;
    return true;
}

Sample S7Driver::read_all() {
    Sample s;
    s.equipment_id = "PLC-1";
    return s;
}

std::string Sample::to_json() const {
    return "{\"equipment_id\":\"" + equipment_id + "\"}";
}

}
