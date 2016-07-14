trait Censor {
    val test = Map(
    "Pucky" -> "Shoot",
    "Beans" -> "Darn"
            )
        def transform(words:String) = {
            test.foldLeft(words) (
            (rightWords, formerWords) =>
            rightWords.replaceAll(
            ("(?!)\\b" + formerWords._1 + "\\b"),
            formerWords._2
                    )
                    )
        }
}

class Speak(val words:String) extends Censor
object test {
def main(args: Array[String]){
    val tom = new Speak("Pucky is Beans")
 println(tom.transform(tom.words))
 }}
