object forLoop {
    def rubyStyleForLoop(args: Array[String]) {
    println(" for loop using Ruby-style iteration")
        args.foreach { arg =>
        println(arg)
        }  
        }
    def main(args: Array[String]) {
     rubyStyleForLoop(args)
}
}
