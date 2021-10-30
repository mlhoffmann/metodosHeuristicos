# Fatores

vec1 <- c("Macho", "Femea","Femea","Macho","Femea","Femea","Macho","Femea","Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

# Variável nominal
animais <- c("Cavalo", "Peixe", "Tigre", "Pato")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais

# Fatores ordenados
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad

# Sumarizando os dados
summary(fac_grad)
summary(grad)

# Exemplo extra
data <- c(1,2,2,3,1,2,3,1,2,3,3,1)
fdata <- factor(data)
fdata

rdata <- factor(data, labels = c("I", "II", "III"))
rdata

# Fatores não-ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

# Transformação dos dados
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

# Fatores ordenados
o.set1 <- factor(set1,
                 levels = c("CA", "BA", "AA", "CC", "B"),
                 ordered = TRUE)
o.set1
is.ordered(o.set1)

# Fatores em Dataframes
df <- read.csv("etnias.csv",sep = ",")
View(df)

# Variáveis do tipo fator
str(df)

# Níveis dos fatores
levels(df$Etnia)
summary(df$Etnia)

# Plot
plot(df$Idade~df$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')

# Machine Learning Regressão 
summary(lm(Idade~Etnia, data = df))

summary(lm(Idade~.,data = df))

str(df)

df
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels = c("Solteiro", "Casado", "Divorciado"))
df
str(df)
plot(df$Idade~df$Estado_Civil, xlab = 'Estado Civil', ylab = 'Idade', main = 'Idade por Estado Civil')




















