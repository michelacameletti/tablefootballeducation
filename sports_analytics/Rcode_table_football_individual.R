# replication of the results in Table 1 of the paper: 
# Cameletti, M., Finazzi, F., Metulini, R. (2026). Table Football as a Platform for Statistical Education and Sports Analytics. In: Martella, F., Arima, S., Marino, M.F., Mollica, C. (eds) Statistical Science: From Theory to Applied Research II. SIS-FENStatS 2026 2026. Italian Statistical Society Series on Advances in Statistics. Springer, Cham. https://doi.org/10.1007/978-3-032-30877-1_69
# web: https://link.springer.com/chapter/10.1007/978-3-032-30877-1_69

# upload the dataset
ds = read.delim("G:\\Il mio Drive\\01.Bergamo\\Orientamento\\Biliardino\\Articolo scientifico\\individual_game_dataset.txt", sep="\t")

# filter the 96 used observations
ds1 = ds[ds$Age.19 == 0,]
ds2 = ds1[ds1$Other.school == 0,]

# estimate the model
res = glm(Goal ~ Female + Angled + Defenders + Age14.16 + Age17.19 + Tecnici + Licei,family=binomial(link = "logit"), data = ds2)

#print results
summary(res)
