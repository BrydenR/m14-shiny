# BuildMap file: write function that returns a map

# This function requires plotly
library(plotly)

# BuildMap function: fill this in with a function that returns a map:
# Try parameterize a few options, such as the title
# I suggest: https://plot.ly/r/bubble-maps/
BuildMap <- function(data) {
  
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showland = TRUE,
    landcolor = toRGB("gray85"),
    subunitwidth = 1,
    countrywidth = 1,
    subunitcolor = toRGB("white"),
    countrycolor = toRGB("white")
  )
  
  p <- plot_geo(data, locationmode = 'USA-states', sizes = c(1, 250)) %>%
    add_markers(
      x = ~lon, y = ~lat, size = ~pop, color = ~q, hoverinfo = "text",
      text = ~paste(data$name, "<br />", data$pop/1e6, " million")
    ) %>%
    layout(title = '2014 US city populations<br>(Click legend to toggle)', geo = g)
  return(p)
}
