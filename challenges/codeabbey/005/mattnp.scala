object Solution extends App {
  val n = scala.io.StdIn.readInt()
  for (_ <- 1 to n) {
    val min = scala.io.StdIn.readLine.split(" ").map(_.toInt).reduceLeft(_ min _)
    System.out.println(min + " ")
  }
}
