object Solution extends App {
  def roundUp(d: Double) = math.ceil(d).toInt
  def div(l: Array[Double]) =  l(0)/l(1)
  val n = scala.io.StdIn.readInt()
  for (_ <- 1 to n) {
    val res = roundUp(div(scala.io.StdIn.readLine.split(" ").map(_.toDouble)))
    System.out.println(res + " ")
  }
}
