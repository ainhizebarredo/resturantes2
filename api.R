#* @apiTitle Restaurantes de NY
#* @apiDescription a traves de esta api podras saber la cantidad de restaurantes que hay para cada tipo de comida y de servicio a domicilio


#* @param tipo_comida TIPO DE COMIDA
#* @get /cantidad 

function(tipo_comida=""){
  df_comida<-df%>%
    filter(df$Popular.food==tipo_comida)
  cantidad<-dim(df_comida)[1]
  paste0('hay ', cantidad, ' de restaurantes para el tipo de comida: ', tipo_comida)
}

#* @param domicilio A DOMICILIO?
#* @get /domicilio

function(tipo_comida="",domicilio=""){
  df_comida<-df%>%
    filter(df$Popular.food==tipo_comida & df$Online.Order==domicilio)
  cantidad<-dim(df_comida)[1]
  paste0('hay ', cantidad, ' de restaurantes para el tipo de comida: ', tipo_comida, ' y la entrega a domicilio es:',domicilio)
} 
