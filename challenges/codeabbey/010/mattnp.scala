object Solution extends App {
  val t = scala.io.StdIn.readInt
  for (_ <- 1 to t) {
    val points = scala.io.StdIn.readLine.split(" ").map(_.toInt)
    val p1 = points.slice(0, 2)
    val p2 = points.slice(2, 4)
    val a = (p2(1) - p1(1)) / (p2(0) - p1(0))
    val b = p1(1) - (a * p1(0))
    System.out.print("(" + a + " " + b + ") ")
  }
}
