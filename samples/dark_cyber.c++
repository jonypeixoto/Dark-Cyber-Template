#include <string>
#include <vector>

/*
 * In a land shrouded in mystery...
 */

class DarkCyber {
 public:
  DarkCyber(std::string name, int construction_year, int destruction_year,
             std::vector<std::string> features)
      : _name{name},
        _construction_year{construction_year},
        _destruction_year{destruction_year},
        _features{features} {}

  int age() { return calc_age(); }

 private:
  std::string _name;
  int _construction_year;
  int _destruction_year;
  std::vector<std::string> _features;

  int calc_age() { return _destruction_year - _construction_year; }
};

// ...there stood a Dark Cyber

int main() {
  std::string name = "Shadowhollow";
  int construction_year = 1023, destruction_year = 1598;
  std::vector<std::string> features { "Tall Towers", "Enchanted Forest" };

  DarkCyber shadowhollow{name, construction_year, destruction_year, features};

  return 0;
}
