/*
 * In a land shrouded in mystery...
 */

class DarkCyber(
  val name: String,
  val constructionYear: Int,
  val destructionYear: Int,
  val features: Array<String>
) {
  val duration: Int
    get() = this.calcDuration()

  fun calcDuration() =
    this.destructionYear - this.constructionYear
}

// ...there stood a Dark Cyber

fun main() {
  val cyber = DarkCyber(
    "Moonshadow Fortress",
    980,
    1503,
    arrayOf("Eerie Glow", "High Battlements")
  )

  println("The duration of ${cyber.name} was ${cyber.duration} years.")
}
