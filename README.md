<p align="center">
  <img src="tablefootball_logo.png" alt="Table Football for Statistics Education" width="420">
</p>

# Table Football for Statistics Education

This repository accompanies the paper

> **Cameletti, M., & Metulini, R.**
> *Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students.*

and provides all the materials required to reproduce the educational laboratory described in the paper.

The project uses **table football** as a game-based context for introducing **conditional probability**, **uncertainty**, **statistical prediction**, and the **limitations of statistical models**. Although originally designed for university outreach activities with high-school students, the materials can also be adapted for introductory statistics courses.

---

# Repository contents

| File | Description |
|------|-------------|
| 📄 `individual_shots_with_description.xlsx` | Dataset, fitted logistic regression model, prediction interface, and data description for the individual-shot activity. |
| 📄 `team_matches_with_description.xlsx` | Dataset, fitted logistic regression model, prediction interface, and data description for the team-match activity. |
| 🖼️ `tablefootball_logo.png` | Repository logo. |
| 📘 `README.md` | Documentation and instructions. |

---
# Educational objectives

The table football laboratory introduces students to:

- probability and conditional probability;
- uncertainty in statistical prediction;
- logistic regression as a predictive model;
- interpretation of model outputs;
- comparison between predicted probabilities and observed outcomes;
- limitations of statistical models.

No previous knowledge of logistic regression is required.

---

# Overview

The repository supports two complementary educational activities.

## Activity 1 — Individual-shot prediction

Students perform individual shots under different playing conditions and compare the observed outcome with the probability of scoring estimated by a logistic regression model.

### Statistical unit

One observation corresponds to **one shot**.

### Outcome

- `Goal = 1`: the shot results in a goal.
- `Goal = 0`: the shot does not result in a goal.

### Information used by the model

The fitted model uses:

- age category;
- gender;
- type of secondary school;
- shooting position (central or angled);
- defensive configuration (defenders present or absent).

The workbook returns the estimated conditional probability

```
P(goal | player characteristics, shot characteristics)
```

The probability is generated **before** the shot is taken.

After the shot, the workbook computes

```
Delta = observed outcome − predicted probability
```
---

## Activity 2 — Team-match prediction

Two-player teams compete in a table-football match. A logistic regression model generates the probability that Team A wins after the first goal has been scored.

### Statistical unit

One observation corresponds to **one match**.

### Outcome

- `Team A wins = 1`
- `Team A wins = 0`

### Information used by the model

The fitted model uses differences between Team A and Team B in:

- average age;
- average self-assessed playing skill;
- average playing frequency during the previous year;
- number of players competing in their preferred role;
- number of female players.

The model also includes an indicator identifying which team scored the first goal.

The workbook returns the estimated in-play probability

```
P(Team A wins | team characteristics, first goal)
```

The complementary probability corresponds to Team B winning.

After the match, the workbook computes

```
Delta = observed outcome − predicted probability
```
# Suggested educational workflow

A laboratory session can be organized as follows:

1. introduce probability through simple examples;
2. introduce conditional probability using two-way tables;
3. explain that statistical models produce probabilities rather than certain predictions;
4. generate a model-based probability;
5. play the shot or match;
6. observe the outcome;
7. compare prediction and outcome;
8. discuss variability, uncertainty, and omitted information.

---

# How to use the workbooks

## Individual-shot workbook

1. Open `individual_shots_with_description.xlsx`.
2. Enter the characteristics of a new player and shot in the next empty row.
3. Copy the formulas indicated in the worksheet.
4. Read the estimated probability of scoring.
5. After the shot, enter the observed outcome.
6. Compare the prediction with the observed outcome.

---

## Team-match workbook

1. Open `team_matches_with_description.xlsx`.
2. Enter the characteristics of Team A and Team B.
3. After the first goal, indicate which team scored first.
4. Copy the formulas indicated in the worksheet.
5. Read the predicted probabilities.
6. After the match, enter the observed outcome.
7. Compare the prediction with the observed outcome.

---

# Re-estimating the models

The logistic regression models were estimated in Microsoft Excel using the **Solver** add-in by maximizing the log-likelihood.

**Solver is NOT required** to generate predictions using the fitted models.

Solver is required **only** if users wish to re-estimate the model after modifying or extending the dataset.

To enable Solver:

1. File → Options → Add-ins
2. Select **Excel Add-ins**
3. Click **Go**
4. Enable **Solver Add-in**
5. Click **OK**

---


# Companion paper

If you use these materials, please cite:

> Cameletti, M., & Metulini, R.
> *Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students.*
> *TBD*

### BibTeX

```bibtex
@article{cameletti2026tablefootball,
  author  = {Cameletti, Michela and Metulini, Rodolfo},
  title   = {Using Table Football to Introduce Statistical Reasoning and Predictive Modeling to High-School Students},
  journal = {},
  year    = {2026},
  note    = {to be submitted}
}
```

---

# Contact

**Michela Cameletti**

Department of Economics, University of Bergamo

📧 michela.cameletti@unibg.it

**Rodolfo Metulini**

Department of Economics, University of Bergamo

📧 rodolfo.metulini@unibg.it
