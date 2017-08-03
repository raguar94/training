object Solution extends App {
  def secondsToTime(time: Int): Array[Int] = {
    val seconds = (time / 1) % 60
    val minutes = (time / 60) % 60
    val hours = (time / 3600) % 24
    val days = (time / 86400) % 30
    Array(days, hours, minutes, seconds)
  }

  val t = scala.io.StdIn.readInt
  for (_ <- 1 to t) {
    val arr = scala.io.StdIn.readLine.split(" ").map(_.toInt)
    val arrTimes = Array(1, 60, 3600, 86400)
    val time1 = arr.slice(0, 4).reverse.zipAll(arrTimes, 0, 0).map { case (a, b) => a * b }.sum
    val time2 = arr.slice(4, 8).reverse.zipAll(arrTimes, 0, 0).map { case (a, b) => a * b }.sum
    val timeDiff = time2 - time1
    val timeDiffArr = secondsToTime(timeDiff)
    System.out.print("(" + timeDiffArr.mkString(" ") + ") ")
  }
}
