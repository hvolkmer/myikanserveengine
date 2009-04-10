
"LOADING: my first Ioke web application!" println

IKanServe actionForPath(#r[^/foo], method("hello world!!"))
IKanServe actionForPath(#r[^/bar], method("you requested this: #{request pathInfo}"))
IKanServe actionForPath(#r[^/xxx], method(
    h = IKanServe HtmlBuilder
    h html(h head(h title("Filthy!")),
      h body(
        h h2("You filthy bastard")
    ))
))

IKanServe actionForPath(#r[^/], method(
    h = IKanServe HtmlBuilder
    h html(h head(h title("nada!")),
      h body(
        h b("... really nothing here ...")
    ))
))
