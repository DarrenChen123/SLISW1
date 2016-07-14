object test {
    def factorial(n: Int): Int = n match {
    case 0 => 1
    case x if x > 0 => factorial(n - 1) * n
    }
def main(args: Array[String]){
 println(factorial(3))
 println(factorial(0))
 }}
