object forLoop {
    def forLoop(args: Array[String]) {
    println(" for loop using Java-style iteration")
        for(i <- 0 until args.length) {
        println(args(i))
        }
    }
    def main(args: Array[String]) {
     forLoop(args)
}
}
