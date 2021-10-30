# Tipos Básicos de Dados em R

# Numeric - Todos os dados do R são numeric
# São armazenados como números decimais (double)
num1 <- 5
num1
class(num1)
mode(num1)
typeof(num1)

num2 <- 17.38
num2
mode(num2)
typeof(num2)

# Interger
# Converter tipos numeric para integer
is.integer(num2)
is.double(num2)
y <- as.integer(num2)
y
class(y)
mode(y)
typeof(y)

# Character
char1 <- "A"
char1
typeof(char1)
mode(char1)

# Complex
compl <- 2.5 + 3i
compl
mode(compl)
typeof(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

# Logic
x <- 1 ; y <- 2
z <- x > y
z
class(z)

# Operações com 0
5 / 0
0 / 5 












