# Strings
texto <- "Isto é uma string"
texto

x <- as.character(3.14)
x
class(x)

# Concatenar
nome <- "Marcos"
sobrenome <- "Souza"

paste(nome, sobrenome)
cat(nome, sobrenome)

# Formatação de imprerssão (Placeholder)
sprintf("A %s é nota %d", "Unisinos",10)
?sprintf

sprintf("%.4f", pi)

# Extrair parte da string
texto <- "Isto é uma string"
substr(texto, start = 12, stop=17)

# Alterar o tipo de capitalização
tolower("UnisiNos é top")
toupper("UnisinOs é top")

# Usando o pacote stringr
install.packages("stringr")
library(stringr)

# Divisão de caracteres
?stringr

strsplit("Unisinos é top", NULL)
strsplit("Unisinos é top", " ")
strsplit("Unisinos@é@top", "@")
