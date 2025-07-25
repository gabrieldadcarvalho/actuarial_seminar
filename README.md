# Credit Classification: Supervised Machine Learning

This project applies various supervised machine learning techniques to classify credit default based on a given dataset. The analysis is implemented in R and documented in an R Markdown file.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have R and RStudio installed on your system. You will also need the following R packages:

- `bookdown`
- `ggplot2`
- `plotly`
- `caTools`
- `e1071`
- `class`
- `rpart`
- `rpart.plot`
- `dplyr`
- `caret`

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/gabrieldadcarvalho/actuarial_seminar.git
    ```
2.  Open the `mlCiênciasAtuarias.Rmd` file in RStudio.
3.  Install the required packages by running the following commands in the R console:
    ```R
    install.packages(c("bookdown", "ggplot2", "plotly", "caTools", "e1071", "class", "rpart", "rpart.plot", "dplyr", "caret"))
    ```

## Usage

To run the analysis and generate the report, open the `mlCiênciasAtuarias.Rmd` file in RStudio and click the "Knit" button. This will execute the R code in the document and generate a PDF report with the results.

## Project Structure

- `mlCiênciasAtuarias.Rmd`: The main R Markdown file containing the entire analysis.
- `mlCiênciasAtuarias.pdf`: The rendered PDF report.
- `data/original.csv`: The dataset used for the analysis.
- `kmeans/`, `hierarchical_clustering/`, `svm/`: Directories containing individual R scripts for different models. These are not used in the main analysis but are available for separate execution.

## Models

The following supervised learning models are implemented and evaluated in this project:

- **Logistic Regression**: A statistical model that in its basic form uses a logistic function to model a binary dependent variable.
- **Support Vector Machine (SVM)**: A supervised learning model that uses a separating hyperplane to classify data.
- **Decision Tree**: A non-parametric supervised learning method used for classification and regression. It has a tree-like model of decisions.
