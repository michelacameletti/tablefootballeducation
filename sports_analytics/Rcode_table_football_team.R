
# Replication of the results in Table 1 of the paper: 
# Cameletti, M., Metulini, R. (2026). Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students. Draft.



# upload the dataset (change the directory)
ds = read.delim("G:\\Il mio Drive\\01.Bergamo\\Orientamento\\Biliardino\\Articolo scientifico\\GITHUB\\team_game_dataset.txt")

# estimate the model
logit = glm(team_A_wins ~ delta_age + delta_skill + delta_Yearly_frequency + delta_Preferred_role + delta_women + First_goal, data = ds, family = binomial(link='logit'))

# print the results
summary(logit)





