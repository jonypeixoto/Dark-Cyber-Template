package main

import "fmt"

/*
 * In a land shrouded in mystery...
 */
 
type DarkCyber struct {
  Name            string
  ConstructionYear int
  DestructionYear  int
  Features        []string
}

func (c *DarkCyber) Age() int {
  return c.calcAge()
}

func (c *DarkCyber) calcAge() int {
  return c.DestructionYear - c.ConstructionYear
}

// ...there stood a Dark Cyber

func main() {
  cyber := &DarkCyber{
    Name:            "Moonshadow Fortress",
    ConstructionYear: 980,
    DestructionYear:  1503,
    Features:        []string{"Eerie Glow", "High Battlements"},
  }

  fmt.Printf("The age of %s is %d years.\n", cyber.Name, cyber.Age())
}
