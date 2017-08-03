object Solution extends App {
  val t = scala.io.StdIn.readInt
  for (_ <- 1 to t) {
    val sides = scala.io.StdIn.readLine.split(" ").map(_.toInt)
    val z = sides.reduceLeft(_ max _)
    val res = if (z*2 <= sides.sum) 1 else 0;
    System.out.print(res + " ")
  }
}
