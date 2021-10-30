# Variáveis em R

# Criando variáveis
var1 <- 100
var2 <- 200
var3 <- 100

mode(var1)
help("mode")
help('mode')
sqrt(var1)

# Podemos atribuir o valor de uma variável a outra
var2 <- var1
var2

# Uma variável pode ser uma lista
var3 <- c("primeiro","segundo", "terceiro")
var3
mode(var3)
typeof(var3)

# Mudar o modelo do dado
var4 <- as.character(var1)
sqrt(var4)
print(sqrt(as.numeric(var4)))
var4 <- as.numeric(var4)

# Uma variável pode ser uma função
var5 <- function(x) {
  x + 3
}
var5(3)
mode(var5)

# Atribuindo valor a objetos
x <- c(1, 2, 3)
x

c(1,2,3) -> y
y

assign("x", c(6.3,4,-2))
x

# Verificar o valor em uma posição específica
x[2]

# Verificar objetos
ls()
objects()

# Remover objetos
rm(y)
y






































