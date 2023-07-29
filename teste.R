# Carregando os pacotes necessários para análise
library(readr)
library(dplyr)

# Carregando os dados dos arquivos CSV
portfolio_ofertas <- read_csv("./Datas/portfolio_ofertas.csv")
clientes <- read_csv("dados_clientes.csv")
ofertas <- read_csv("eventos_ofertas.csv")

# Visualizando as primeiras linhas dos dados
head(portfolio_ofertas)
head(dados_clientes)
head(eventos_ofertas)

# Carregar bibliotecas
library(ggplot2)
# Criar o gráfico de dispersão
ggplot(clientes, aes(x = membro_desde, y = renda_anual)) +
  geom_density_2d() +
  labs(x = "Data de adesão", y = "Renda Anual", fill = "Densidade") +
  theme_minimal()

ggplot(clientes, aes(x = membro_desde, y = renda_anual)) +
  geom_density_2d_filled() +
  labs(x = "Data de adesão", y = "Renda Anual", fill = "Densidade") +
  theme_minimal() +
  scale_y_continuous(labels = scales::number_format(scale = 1, prefix = "R$ "))
