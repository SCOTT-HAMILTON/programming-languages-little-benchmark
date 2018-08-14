import java.lang.Math.{cos, sin, sqrt}

import scala.annotation.tailrec

object TestAbsolute_Discord {
  private[this] val Max1 = 950L
  private[this] val MaxLoop = 1000L
  private[this] val Max2 = 38L

  private[this] var it_total = 0L
  private[this] var result = 0.0

  @tailrec
  def f(it_cur: Long): Long = {
    if (it_cur == Max1) {
      it_cur
    } else {
      it_total += 1
      result += sqrt(3123456.0 / 0.000123456) * cos(it_total) / sin(cos(it_total * it_total) * 5)
      f(it_cur + 1)
    }
  }

  @tailrec
  def f2(it_cur: Long): Long = {
    if (it_cur == Max2) {
      it_cur
    } else {
      var i = 1
      while (i <= MaxLoop) {
        f(0)
        i += 1
      }
      println(s"${it_cur * 100.0 / Max2} %")
      it_total += 1
      f2(it_cur + 1)
    }
  }

  def main(args: Array[String]): Unit = {
    val t0 = System.currentTimeMillis()
    println("starts!!!")
    f2(0)
    println(s"result: $result")
    println(s"total iterations: $it_total")
    val t1 = System.currentTimeMillis()
    println(s"time: ${(t1 - t0) / 1000.0} s")
  }
}
