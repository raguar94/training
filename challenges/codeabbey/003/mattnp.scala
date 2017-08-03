object Solution extends App {
  val n = scala.io.StdIn.readInt()
  for (_ <- 1 to n) {
    val res = scala.io.StdIn.readLine.split(" ").map(_.toInt).sum
    System.out.println(res + " ")
  }
}
