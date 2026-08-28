# Replication of the results in Table 1 of the paper [Omitted]

# upload the dataset (change the directory)
ds = read.delim("team_game_dataset.txt")

# estimate the model
logit = glm(team_A_wins ~ delta_age + delta_skill + delta_Yearly_frequency + delta_Preferred_role + delta_women + First_goal, data = ds, family = binomial(link='logit'))

# print the results
summary(logit)





