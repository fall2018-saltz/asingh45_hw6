
#Getting the USArrests dataframe and storing it in a dataframe object
arrests <- USArrests
arrests['stateName'] <- row.names(arrests)
return arrests
