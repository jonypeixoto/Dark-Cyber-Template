/*
 * In a land shrouded in mystery...
 */

class DarkCyber {
  String name;
  int constructionYear, destructionYear;
  List<String> features;

  DarkCyber({this.name, this.constructionYear, this.destructionYear, this.features});

  int get age => this.calcAge();

  int calcAge() => this.destructionYear - this.constructionYear;
}

void main() {
  // ...there stood a Dark Cyber
  final cyber = DarkCyber(
      name: 'Nightfall',
      constructionYear: 1023,
      destructionYear: 1598,
      features: ['Tall Towers', 'Enchanted Forest']);

  print('The age of ${cyber.name} is ${cyber.age} years.');
}
