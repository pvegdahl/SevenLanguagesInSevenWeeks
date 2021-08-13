def doChore(chore: String): String = chore match {
  case "clean dishes" => "scrub, dry"
  case "cook dinner" => "chop, sizzle"
  case _ => "drink wine instead"
}

println(doChore("clean dishes"))
println(doChore("mow lawn"))
