
merged_df <- merge(x=census,y=arrests)
write.csv(merged_df,file='merged.csv')
