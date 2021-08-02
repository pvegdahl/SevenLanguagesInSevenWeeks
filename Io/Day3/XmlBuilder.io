writepadding := method(spaces, for(_, 0, spaces-1, write(" ")))

XmlBuilder := Object clone
XmlBuilder depth := 0
XmlBuilder forward := method(
    writepadding(2*depth)
    writeln("<", call message name, ">")
    self depth := self depth + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writepadding(2*(self depth)); writeln(content)))
    self depth := self depth - 1
    writepadding(2*depth)
    writeln("</", call message name, ">")
)

XmlBuilder ul(li("Roger"), li("Lawrence"), li("Mommy"), li("Daddy"))
