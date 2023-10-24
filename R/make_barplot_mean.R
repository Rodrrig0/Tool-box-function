make_barplot_mean = function(data, valeurs, classe){
  
  tapplym = tapply(valeurs, classe, mean)
  tapplyes = tapply(valeurs, classe, sd)
  tapplyn = tapply(valeurs, classe, length)
  tapplyes = tapplyes/sqrt(tapplyn)
  
  dataframe = data.frame(tapplym, tapplyes, tapplyn)
  colnames(dataframe) = c("Moyenne","es","n")
  dataframe = tibble::rownames_to_column(dataframe, var = "nom")
  
  return(dataframe)
}