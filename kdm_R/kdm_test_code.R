df_2011 <- read_dta("C:/Users/gy40/Desktop/git/2011.dta")
View(df_2011)
library(bioage)
df_2011_filter_age = filter(df_2011,age>=40,age<=85)
train_2011 = kdm_calc(data=df_2011_filter_age,agevar = 'age',biomarkers = c('sysbp','diabp','wbc','plt','bun'))
ba = train_2011[['data']][,c('ID','householdID','sysbp','diabp','wbc','plt','bun','age','bioage')]
write.csv(ba,'C:/Users/gy40/Desktop/git/R/kdm_test.csv',row.names = FALSE)
