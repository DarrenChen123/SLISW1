object test {
def main(args: Array[String]){
    val test = List(
    "One",
    "Two",
    "Three",
    "Four"
            )
 println(test.foldLeft(0)((sum, value) => sum + value.length))
 }}
