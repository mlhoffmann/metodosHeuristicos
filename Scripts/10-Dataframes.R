# Dataframes e manipulação de df

# Gerando um dataframe vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

df <- data.frame(c(nomes, idades, itens, codigos))
df

# Vetores
pais <- c("Argentina", "Brasil","Alemanha", "Egito")
nome <- c("Marcos", "Luis", "Amanda", "Ana")
altura <- c(1.88, 1.52, 1.9, 1.70)
codigo <- c(1524, 15364, 5878, 45875)

# Criar df com os vetores
pesquisa <- data.frame(pais, nome, altura, codigo)
pesquisa

# Adicionando um novo vetor
olhos <- c("verde", "azul", "verde", "azul")
olhos

pesquisa2 <- cbind(pesquisa,olhos)
pesquisa2

# Informações sobre o df
str(pesquisa2)
dim(pesquisa2)
length(pesquisa2)

# Seleção de vetores de um df
pesquisa2$nome
pesquisa2$olhos

mean(pesquisa2$altura)
hist(pesquisa2$altura)
plot(pesquisa2$altura)
barplot(pesquisa2$altura)

# Extraindo um único valor
pesquisa2

pesquisa2[1,1]
pesquisa2[3,2]

pesquisa2$olhos
pesquisa2[,5]

# Número de linhas e colunas

nrow(pesquisa2)
ncol(pesquisa2)

# Primeiros elementos do df
head(pesquisa2)
head(mtcars)
length(mtcars)
?mtcars

# Ultimos elementos do df
tail(pesquisa2)
tail(mtcars)

View(pesquisa2)
View(pesquisa2)
View(mtcars)

# Filtros para subset de dados de acordo com critérios
pesquisa2[altura < 1.7,]
pesquisa2[altura > 1.7,]

pesquisa2[nome == "Ana",]

# Carregar um arquivo csv
?read.csv
df <- data.frame((read.csv(file = 'pacientes.csv', header = TRUE, sep = ",")))

# Visualização do df
View(df)
head(df)
summary(df)
str(df)

# Visualizando as variaveis
df$Diabete
df$Status

# Histograma
hist(df$Idade)
mean(df$Idade)

# Combinando df
df_final <- merge(pesquisa2, df)
df_final







