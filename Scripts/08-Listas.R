
# Use o comando list() cria lista

# Lista de strings
lista_caracter1 <- list("A", "B", "C")
lista_caracter1

lista_caracter2 <- list(c("A", "B"),"C", "E")
lista_caracter2

lista_caracter3 <- list(matrix(c("A", "A", "A", "A"), nr = 2), "B", "C")
lista_caracter3

# Lista composta
set.seed(10)
lista1 <- list(1:10, c("Pelé", "Ronald", 1, "Renato"),rnorm(10))
lista1

# Slicing (Fatiamento) da lista
lista1[1]
lista1[[1]][2]
lista1[2]
lista1[[2]][1]
lista1[[2]][1] = "Marcos"
lista1[2]

# Para nomear os elemntos - Lista com nomes
names(lista1) <- c("inteiros","Caracteres", "números")
lista1

lista1$inteiros[1]
lista1$Caracteres

# União 2 ou mais elementos na lista
mat <- matrix(1:4, nrow = 2)
mat

vec <- rep(1:9)
vec
lista2 <- list(mat, vec)
lista2

lista3 <- list(mat, vec, lista1)
lista3
lista3[[3]][[1]][2]








