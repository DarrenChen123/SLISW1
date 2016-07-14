object test{
def main(args: Array[String]){
class Game {
    var table = Array(
        "_", "_", "_",
        "_", "_", "_",
        "_", "_", "_"
            )
}

 val gameState = 0
 val piece = List("X", "O")
 var player = 0
 var currentPiece = -1
 def choose() {
     if(this.player == 0) {
      println("X's move(0~8):")

     } else {
      println("O's move(0~8):")
     }
     currentPiece = Console.readInt();
 }

 def validMove():Boolean = {
     if(this.table(currentPiece) == "_") {
     return true
     } else {
      return false
     }
 }

 def setPiece() {
     if(this.player == 0) {
     this.table(currentPiece) = "X"
     } else {
     this.table(currentPiece) = "O"
     }
 }

 def judger() {
  if ((table(0) != "_" &&
        table(0) == table(1) &&
        table(0) == table(2)) ||
        (table(3) != "_" && 
        table(3) == table(4) &&
        table(3) == table(5)) ||
        (table(6) != "_" &&
        table(6) == table(7) &&
        table(6) == table(8)) ||
        (table(0) != "_" && 
        table(0) == table(3) &&
        table(0) == table(6)) ||
        (table(1) != "_" &&
        table(1) == table(4) &&
        table(1) == table(7)) ||
        (table(2) != "_" &&
        table(2) == table(5) &&
        table(2) == table(8)) ||
        (table(0) != "_" &&
        table(0) == table(4) &&
        table(0) == table(8)) ||
        (table(2) != "_" &&
        table(2) == table(4) &&
        table(2) == table(6))) {
         gameState = 1
        }
 }

 def hasFinished():Boolean = {
  this.judger()
      if (this.gameState == 1) {
          if(this.player == 1) {
          println("O win!")
          } else {
           println("X win!")
          }
          return true
      } else {
       return false
      }
 }

 def printTable() {
  println(table(0) + "|" + table(1) + "|" + table(2))
  println(table(3) + "|" + table(4) + "|" + table(5))
  println(table(6) + "|" + table(7) + "|" + table(8))
 }

 def play() {
  this.printTable()
      while(!this.hasFinished) {
      this.choose()
          while(!this.validMove()) {
           println("INVALID MOVE!")
           this.choose()
          }
          this.setPiece()
          this.printTable()
          if(plaer == 0) {
           player = 1
          } else {
          player = 0
          }
      }
 }

 var game = new Game()
 game.play()
 }
 }
