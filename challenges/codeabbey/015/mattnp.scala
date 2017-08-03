object Solution extends App {
  val arr = scala.io.StdIn.readLine.split(" ").map(_.toInt)
  val min = arr.reduceLeft(_ min _)
  val max = arr.reduceLeft(_ max _)
  System.out.println(max + " " + min)
}
