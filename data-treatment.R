library(readr)
library(dplyr)

portfolio_ofertas <- read_csv("./Datas/portfolio_ofertas.csv")
clientes <- read_csv("./Datas/clientes.csv")
ofertas <- read_csv("./Datas/ofertas.csv")

# Visualizando as primeiras linhas dos dados
head(portfolio_ofertas)
head(clientes)
head(ofertas)
