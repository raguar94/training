object Solution extends App {
  def div(l: Array[Double]) =  l(0)/l(1)
  val n = scala.io.StdIn.readInt()
  for (_ <- 1 to n) {
    val res = div(scala.io.StdIn.readLine.split(" ").map(_.toDouble)).round
    System.out.println(res + " ")
  }
}
