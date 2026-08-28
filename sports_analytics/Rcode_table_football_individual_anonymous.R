# Code to replicate the the results in Table 1 of the paper [Omitted] 

# upload the dataset
ds = read.delim("individual_game_dataset.txt", sep="\t")

# filter the 96 used observations
ds1 = ds[ds$Age.19 == 0,]
ds2 = ds1[ds1$Other.school == 0,]

# estimate the model
res = glm(Goal ~ Female + Angled + Defenders + Age14.16 + Age17.19 + Tecnici + Licei,family=binomial(link = "logit"), data = ds2)

#print results
summary(res)
