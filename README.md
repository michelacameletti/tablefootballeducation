<p align="center">
  <img src="tablefootball_logo.png" alt="Table Football for Statistics Education" width="420">
</p>

# Table Football for Statistics Education

This repository accompanies the paper

> **Cameletti, M., & Metulini, R.**  
> *Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students.*

The project uses table football as a game-based context for introducing conditional probability, uncertainty, statistical prediction, and the limitations of statistical models. The materials were developed for university outreach activities with high-school students but can also be adapted for introductory statistics courses.

The repository provides the materials needed to reproduce two complementary educational activities and the data and R code used for the associated sports analytics applications.

---

## Repository contents

| File or folder | Description |
|---|---|
| `individual_shots_with_description.xlsx` | Data, fitted logistic regression model, prediction interface, Solver implementation, and data dictionary for the individual-shot activity. |
| `team_matches_with_description.xlsx` | Data, fitted logistic regression model, prediction interface, Solver implementation, and data dictionary for the team-match activity. |
| `teaching_materials/` | Materials supporting the introductory component of the laboratory. |
| `sports_analytics/` | R code for reproducing the sports analytics results reported in the associated publications. |
| `tablefootball_logo.png` | Repository logo. |

---

# Educational activities

## Activity 1 — Individual-shot prediction

Students perform individual shots under different playing conditions and compare the observed outcome with the probability of scoring estimated by a logistic regression model.

### Statistical unit and outcome

One observation corresponds to one shot:

- `Goal = 1`: the shot results in a goal;
- `Goal = 0`: the shot does not result in a goal.

### Information used by the model

The model uses information on:

- age category;
- gender;
- type of secondary school;
- shooting position (central or angled);
- defensive configuration (defenders present or absent).

The workbook returns

```text
P(goal | player characteristics, shot characteristics)
```

The probability is generated **before the shot is taken**. After the shot, the observed outcome can be compared with the predicted probability through

```text
Delta = observed outcome - predicted probability
```

### Using the workbook

1. Open `individual_shots_with_description.xlsx`.
2. In the next empty row, enter the characteristics of the new player and shot.
3. Copy the formulas indicated in the worksheet to the new row.
4. Read the estimated probability of scoring.
5. Take the shot and enter the observed outcome.
6. Copy the indicated formula to calculate `Delta`.
7. Compare the observed outcome with the model-based probability.

---

## Activity 2 — Team-based match prediction

Two-player teams compete in a table-football match. The model generates an **in-play probability of victory after the first goal has been scored**, while the final match outcome is still unknown.

### Statistical unit and outcome

One observation corresponds to one match between Team A and Team B:

- `Team A wins = 1`;
- `Team A wins = 0` if Team B wins.

### Information used by the model

For each team, player-level information is combined to obtain:

- average age;
- average self-assessed table-football skill;
- average frequency of play during the previous year;
- number of players competing in their preferred role;
- number of female players.

For age, self-assessed skill, and frequency of play, the corresponding values of the two players are first averaged within each team. The model then uses the difference between the Team A and Team B averages. For preferred role and gender composition, differences between team counts are used.

The model also includes an indicator identifying which team scored the first goal.

The workbook returns

```text
P(Team A wins | team characteristics, first goal)
```

together with the complementary probability that Team B wins.

After the match, the observed outcome can be compared with the predicted probability through

```text
Delta = observed outcome - predicted probability
```

### Using the workbook

1. Open `team_matches_with_description.xlsx`.
2. Enter the characteristics of Team A and Team B.
3. Start the match.
4. After the first goal, indicate which team scored first.
5. Copy the formulas indicated in the worksheet to obtain the in-play probabilities.
6. Complete the match and enter the observed outcome.
7. Compare the final result with the model-based probability.

---

# Suggested educational workflow

A laboratory session can be organized around the following sequence:

1. introduce probability and conditional probability using simple examples and two-way tables;
2. explain that a statistical model combines available information to produce a probability rather than a certain prediction;
3. enter the relevant player, shot, or team characteristics;
4. generate the model-based probability;
5. play the shot or match;
6. observe the outcome;
7. compare the prediction with the observed outcome;
8. discuss variability, uncertainty, unexpected outcomes, and potentially relevant information not included in the model.

The two activities can be used independently according to the available time, number of participants, and intended learning goals.

---

# Teaching materials

Each laboratory session begins with a short instructor-led introduction to probability, conditional probability, and statistical prediction.

The `teaching_materials/` folder contains the slides used to support this introductory component of the laboratory. These materials can be adapted according to students' prior statistical preparation and the version of the activity being implemented.

**[TO BE UPDATED: list the slide files after uploading them.]**

---

# Excel Solver

The logistic regression models contained in the workbooks were estimated in Microsoft Excel by maximizing the log-likelihood using the **Solver** add-in.

**Solver is not required to generate predictions from the fitted models.** It is needed only if users wish to re-estimate the model after modifying or extending the dataset.

To enable Solver in Excel:

1. open **File > Options > Add-ins**;
2. select **Excel Add-ins** and click **Go**;
3. select **Solver Add-in**;
4. click **OK**.

The data dictionaries included in the workbooks describe the variables, model calculations, and Solver objective.

---

# Sports analytics

The data collected through the project can also be used for exploratory sports analytics and more advanced statistical teaching.

The `sports_analytics/` folder provides the R code and data in .txt format used to reproduce the following analyses:

- Individual-shot analysis: Table 1 in Cameletti et al. (2026), https://doi.org/10.1007/978-3-032-30877-1_69;
- Team-match analysis: Table 1 in the accompanying paper.

These analyses illustrate how the data collected for the educational activities can be reused for more advanced statistical applications.

---

# Citation

When using the educational materials in this repository, please cite the accompanying paper:

> Cameletti, M., & Metulini, R. ([year]).  
> *Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students.*  
> *Journal of Statistics and Data Science Education*. [DOI]

### BibTeX

```bibtex
@article{cameletti_tablefootball,
  author  = {Cameletti, Michela and Metulini, Rodolfo},
  title   = {Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students},
  journal = {Journal of Statistics and Data Science Education},
  year    = {[Year]},
  doi     = {[DOI]}
}
```

---

# Authors and contact

**Michela Cameletti**  
Department of Economics, University of Bergamo  
michela.cameletti@unibg.it

**Rodolfo Metulini**  
Department of Economics, University of Bergamo  
rodolfo.metulini@unibg.it
