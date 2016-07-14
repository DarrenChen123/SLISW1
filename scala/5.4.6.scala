import scala.io._
import scala.actors._
import Actor._

object PageLoader {
def getPageSize(url : String) = Source.fromURL(url).mkString.length
def getPageContent(url: String) = Source.fromURL(url).mkString
def getUrlNumber(url: String) = {
val reg = """^(?!)<a[^>]+?href""".r
reg.findAllIn(getPageContent(url)).size
}
}
object test {
val urls = List("http://www.baidu.com/",
                "http://www.seu.edu.cn/",
                "http://www.fantasyshao.tk/")

    def timeMethod(method: () => Unit) = {
    val start = System.nanoTime
    method()
    val end = System.nanoTime
    println("Method took " + (end - start)/1000000000.0 + " seconds.")
    }

def getPageSizeSequentially() = {
    for(url <- urls) {
    println("Size for " + url + ": " + PageLoader.getPageSize(url))
    }
    for(url <- urls) {
     println("Links in " + url + ": " + PageLoader.getUrlNumber(url))
    }
}

def getPageSizeConcurrently() = {
 val caller = self
     for(url <- urls) {
      actor {caller ! ("Size", url, PageLoader.getPageSize(url))}
      actor {caller ! ("Number", url, PageLoader.getUrlNumber(url))}
     }

 for(i <- 1 to (urls.size * 2)) {
     receive {
     case("Size", url, size) =>
     println("Size for " + url + ": " + size)
     case("Number", url, number) =>
     println("Number of " + url + ": " + number)
     }
 }
}


def main(args: Array[String]){
println("Sequential run:")
timeMethod{getPageSizeSequentially}

println("Concurrent run")
timeMethod{getPageSizeConcurrently}
 }}
