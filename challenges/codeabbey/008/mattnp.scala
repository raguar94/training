object Solution extends App {
  val t = scala.io.StdIn.readInt
  for (_ <- 1 to t) {
    val line = scala.io.StdIn.readLine.split(" ").map(_.toInt)
    val a = line(0)
    val b = line(1)
    val n = line(2)
    var sum = a
    for (i <- 1 to n - 1) {
      sum += a + i * b
    }
    System.out.print(sum + " ")
  }
}
