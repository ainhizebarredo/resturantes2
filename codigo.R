df<-read.csv('trip advisor restaurants.csv')
library(dplyr)
str(df)

cuantos_restaurantes<-function(tipo_comida=""){
  df_comida<-df%>%
    filter(df$Popular.food==tipo_comida)
  cantidad<-dim(df_comida)[1]
  paste0('hay ', cantidad, ' de restaurantes para el tipo de comida: ', tipo_comida)
}

cuantos_restaurantes('fries')


