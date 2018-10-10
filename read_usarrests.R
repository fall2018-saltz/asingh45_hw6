
#Getting the USArrests dataframe and storing it in a dataframe object for our use
arrests <- USArrests
arrests['stateName'] <- row.names(arrests)
