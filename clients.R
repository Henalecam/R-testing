library(ggplot2)

generos_filtrados <- subset(clientes, genero %in% c("M", "F"))

ggplot(generos_filtrados, aes(x = genero)) +
  geom_bar(fill = "skyblue", color = "black") +
  labs(x = "Gênero", y = "Contagem", title = "Distribuição de Gênero") +
  theme_minimal()

ggplot(clientes, aes(renda_anual, idade)) +
  geom_density2d_filled()
