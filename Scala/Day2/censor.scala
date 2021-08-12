trait Censor {
  val replacementWords = Map("shoot" -> "pucky", "darn" -> "beans")
  def censor(text: String): String = {
    replacementWords.foldLeft(text){ case (theText, (bad, good)) => theText.replaceAll(bad, good) }
  }
}

class SomeClass {

}

class Whatever extends SomeClass with Censor {
}

// So silly!
val myText = "Hey you, shoot I just dropped my darn marbles in the darn pond and shoot!"

val w = new Whatever()
println(w.censor(myText))
