
pacman::p_load(dplyr, htmltools, leaflet, leaflet.extras, leaflet.minicharts, leafpop, plotly, rgdal, sf, tidyr)

# Objeto simples
vetor <-c(1,2,3,5,7)

# Objeto complexo
# Modelo de regressão
regCarros <- lm(mpg ~ ., mtcars)

# complexidade do objeto
str(regCarros)

