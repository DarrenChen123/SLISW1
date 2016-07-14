class Person(val name: String) {
        def talk(message: String) = println(name + " says " + message)
        def id(): String = name
}

trait Nice {
 def greet() = println("Howdily doodily.")
}
class Character(override val name: String) extends Person(name) with Nice 
object test {
def main(args: Array[String]){
 val flanders = new Character("Ned")
 flanders.greet
 }}
