# Trabalhando com Arquivos txt

# Importando arquivos com read.table()
?read.table

df1 <- read.table("pedidos.txt")
df1
dim(df1)
View(df1)

df1 <- read.table("pedidos.txt", header = TRUE, sep = ',')
df1
View(df1)

df1 <- read.table("pedidos.txt", header = TRUE, sep = ',',
                  col.names = c("var1", "var2", "var3"))
df1

df1 <- read.table("pedidos.txt", header = TRUE, sep = ',',
                  col.names = c("var1", "var2", "var3"),
                  na.strings = c('Zico', 'Maradona'))
df1
str(df1)

df1 <- read.table("pedidos.txt", header = TRUE, sep = ',',
                  col.names = c("var1", "var2", "var3"),
                  na.strings = c('Zico', 'Maradona'),
                  stringsAsFactors = FALSE)
df1

str(df1)

# Importando arquivos com read.csv()
df2 <- read.csv("pedidos.txt")
df2
dim(df2)

df3 <- read.csv2("pedidos.txt")
df3
dim(df3)
View(df3)

df3 <- read.csv2("pedidos.txt", sep = ',')
df3
dim(df3)

# Importando arquivos com read.delim()
df4 <- read.delim("pedidos.txt")
df4
dim(df4)

df4 <- read.delim("pedidos.txt", sep = ',')
df4
dim(df4)

# Importando / Exportando 

#Gerando arquivo
write.table(mtcars, file = 'mtcars.txt')
dir()
getwd()

df_mtcars <- read.table("mtcars.txt")
df_mtcars
View(df_mtcars)

write.table(mtcars, file = "mtcars2.txt", sep = "|",
            col.names = NA, qmethod = "double")

list.files()
dir()

read.table("mtcars2.txt")

df_mtcars2 <- read.table("mtcars2.txt")
df_mtcars2

df_mtcars2 <- read.table("mtcars2.txt", sep = '|')
df_mtcars2

df_mtcars2 <- read.table("mtcars2.txt", sep = '|', encoding = 'UTF-8')
df_mtcars2

df_mtcars2 <- read.table("mtcars2.txt", sep = '|', header = TRUE ,encoding = 'UTF-8')
df_mtcars2

df_mtcars[1,1]






























