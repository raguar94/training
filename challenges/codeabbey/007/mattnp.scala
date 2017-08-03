object Solution extends App {
  val arr = scala.io.StdIn.readLine.split(" ").map(_.toDouble).map(x => 5*(x-32)/9).map(_.round)
  System.out.println(arr.slice(1, arr.length).mkString(" "))
}
