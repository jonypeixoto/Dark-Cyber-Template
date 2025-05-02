#include <stdlib.h>

/*
 * In a land shrouded in mystery...
 */

struct DarkCyber {
  char *name;
  int constructionYear;
  int destructionYear;
  char *features[2];
};

int _calcAge(struct DarkCyber *c) { return c->destructionYear - c->constructionYear; }

int get_age(struct DarkCyber *c) { return _calcAge(c); }

int main() {
  struct DarkCyber c;

  /* ...there stood a Dark Cyber */
  c.name = malloc(12 * sizeof(char));
  c.name = "Shadowhollow";
  c.constructionYear = 1023;
  c.destructionYear = 1598;
  c.features[0] = "Tall Towers";
  c.features[1] = "Enchanted Forest";

  int age = get_age(&c);

  free(c.name);

  return 0;
}
