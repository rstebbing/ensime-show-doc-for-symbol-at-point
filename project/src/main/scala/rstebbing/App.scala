/**
  * mvn dependency:sources
  * mvn ensime:generate
  * mvn compile test-compile
  */
package rstebbing

object App {
  def main(args: Array[String]) {
    helloWorld()
  }

  /**
    * helloWorld
    * 
    */
  def helloWorld() {
    println("Hello World")
  }
}
