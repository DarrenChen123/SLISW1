object test {
def main(args: Array[String]){
for(line <- io.Source.fromFile("test.txt").getLines)
 println(line)
 }}
