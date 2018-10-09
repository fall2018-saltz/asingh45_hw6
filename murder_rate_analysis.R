
#head(df)

murder_df['stateName'] <- df['stateName']
murder_df['NoOfMurders'] <- df['Murder']*df['population']
