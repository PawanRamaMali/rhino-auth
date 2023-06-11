box::use(
  shiny[bootstrapPage, div, moduleServer, NS, renderUI, tags, uiOutput],
  shiny.blueprint[...],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
    Navbar(
      NavbarGroup(
        NavbarHeading("Blueprint"),
        NavbarDivider(),
        Button(minimal = TRUE, icon = "home", text = "Home"),
        Button(minimal = TRUE, icon = "document", text = "Files")
      ),
      NavbarGroup(
        align = "right",
        Button(minimal = TRUE, icon = "user"),
        Button(minimal = TRUE, icon = "refresh")
      )
    )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$message <- renderUI({
      div(
        style = "display: flex; justify-content: center; align-items: center; height: 100vh;",
        tags$h1(
          tags$a("Check out Rhino docs!", href = "https://appsilon.github.io/rhino/")
        )
      )
    })
  })
}
