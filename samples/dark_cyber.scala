/*
 * In a land shrouded in mystery ....
 */
class DarkCyber(name: String, constructionYear: Int, destructionYear: Int, features: Array[String]) {
  def duration(): Int = {
    calcDuration()
  }

  def calcDuration(): Int = {
    this.destructionYear - this.constructionYear
  }
}

// ...there stood a Dark Cyber
val moonshadowFortress = new DarkCyber(name = "Moonshadow Fortress", constructionYear = 980, destructionYear = 1503, features = Array("Eerie Glow", "High Battlements"))

println(s"The duration of ${moonshadowFortress.name} was ${moonshadowFortress.duration()} years.")
