XmlBuilder := Object clone
XmlBuilder forward := method(
    writeln("<", call message name, ">")
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(content)))
    writeln("</", call message name, ">")
)

XmlBuilder ul(li("Roger"), li("Lawrence"), li("Mommy"), li("Daddy"))
