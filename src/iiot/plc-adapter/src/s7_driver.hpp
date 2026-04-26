#pragma once
#include <string>

namespace factorymind {
struct Sample {
    std::string equipment_id;
    std::string to_json() const;
};

class S7Driver {
public:
    bool connect(const char* host);
    Sample read_all();
};
}
