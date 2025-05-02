/*
 * In a land shrouded in mystery...
 */

 class Cyber {
  private String name;
  private int constructionYear;
  private int destructionYear;
  private String[] features;

  public Cyber(String name, int constructionYear, int destructionYear, String[] features) {
    this.name = name;
    this.constructionYear = constructionYear;
    this.destructionYear = destructionYear;
    this.features = features;
  }

  public int getAge() {
    return this.calcAge();
  }

  private int calcAge() {
    return this.destructionYear - this.constructionYear;
  }

  public String getName() {
    return this.name;
  }

  public String[] getFeatures() {
    return this.features;
  }
}

// ...there stood a Dark Cyber

public class dark_cyber {
  public static void main(String[] args) {
    Cyber cyber = new Cyber(
        "Moonshadow Fortress",
        980,
        1503,
        new String[] { "Eerie Glow", "High Battlements" });

    // Using the 'cyber' variable and printing details
    System.out.println("Cyber Name: " + cyber.getName());
    System.out.println("Cyber Age: " + cyber.getAge() + " years");
    System.out.println("Cyber Features:");
    for (String feature : cyber.getFeatures()) {
      System.out.println(" - " + feature);
    }
  }
}
