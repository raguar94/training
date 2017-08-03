object Solution extends App {
  def countDigits(num: Int): Int = {
    if (num < 10) num
    else num % 10 + countDigits(num / 10)
  }

  val t = scala.io.StdIn.readInt
  for (_ <- 1 to t) {
    val nums = scala.io.StdIn.readLine.split(" ").map(_.toInt)
    val num = nums(0) * nums(1) + nums(2)
    val numDigits = countDigits(num)
    System.out.print(numDigits + " ")
  }
}
