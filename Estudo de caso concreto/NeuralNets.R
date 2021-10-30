# Redes Neurais em R
# Modelando a força (strength) do concreto


# Definindo o diretório de trabalho
getwd()
setwd("~/Dropbox/Unisinos/Disciplinas/Atuais/Métodos Heurísticos em Sistemas Produtivos/Repositorio/metodosHeuristicos/Estudo de caso concreto")

# Carregando os dados
concrete <- read.csv("concrete.csv")
View(concrete)
str(concrete)

# Função de Normalização
normalize <- function(x) { 
  return((x - min(x)) / (max(x) - min(x)))
}

# Aplicando a função de normalização a todo o dataset
concrete_norm <- as.data.frame(lapply(concrete, normalize))

# Confirmando que o range está entre 0 e 1
summary(concrete_norm$strength)

# Comparando com o original
summary(concrete$strength)

# Criando dataset de treino e de teste
concrete_train <- concrete_norm[1:773, ]
concrete_test <- concrete_norm[774:1030, ]


# Treinando o modelo
install.packages("neuralnet")
library(neuralnet)
# ?neuralnet
# Rede Neural com apenas uma camada oculta de neurônios
set.seed(12345) 

concrete_model <- neuralnet(formula = strength ~ cement + slag +
                            ash + water + superplastic + 
                            coarseagg + fineagg + age,
                            data = concrete_train)

print(concrete_model)

# Visualizando a rede criada
plot(concrete_model)

# Avaliando a performance
model_results <- compute(concrete_model, concrete_test[1:8])

# Obter os valores previstos
predicted_strength <- model_results$net.result

# Examinando a correlação dos valores previstos
?cor
?`neuralnet-package`
cor(predicted_strength, concrete_test$strength)

# Otimizando o modelo
# Aumentando o número de camadas ocultas
set.seed(12345) 
concrete_model2 <- neuralnet(strength ~ cement + slag +
                               ash + water + superplastic + 
                               coarseagg + fineagg + age,
                             data = concrete_train, hidden = 8)

# Plot
plot(concrete_model2)

# Avaliando o resultado
model_results2 <- compute(concrete_model2, concrete_test[1:8])
predicted_strength2 <- model_results2$net.result
cor(predicted_strength2, concrete_test$strength)






