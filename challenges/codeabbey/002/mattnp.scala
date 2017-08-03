object Solution extends App {
  scala.io.StdIn.readLine
  val res = scala.io.StdIn.readLine.split(" ").map(_.toInt).sum
  System.out.println(res)
}
