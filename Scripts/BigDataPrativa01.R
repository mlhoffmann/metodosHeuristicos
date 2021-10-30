# Big Data na Prática - Analisando a Temperatura Média nas Cidades Brasileiras


# Dataset:
# Berkeley Earth
# http://berkeleyearth.org/data
# TemperaturasGlobais.csv ~ 78 MB (zip) ~ 496 MB (unzip)
# Façs o download do arquivo zip no link abaixo e descompacte na mesma pasta onde está este script. 
# https://drive.google.com/file/d/1nSwP3Y0V7gncbnG_DccNhrTRxmUNqMqa/view?usp=sharing 

# Instalando e Carregando Pacotes
# Se já instalou em outros scripts, não é necessário instalar novamente!
# install.packages("readr")
# install.packages("data.table")
# install.packages("dplyr")
# install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)


# Carregando os dados (Usando um timer para comparar o tempo de carregamento com diferentes funções)

# Usando read.csv2()
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))


# Usando read.table()
system.time(df_teste2 <- read.table("TemperaturasGlobais.csv"))

# Usando fread()
?fread
system.time(df <- fread("TemperaturasGlobais.csv"))
head(df)

# Criando subsets dos dados carregados
cidadesBrasil <- subset(df, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)
str(cidadesBrasil)


# Preparação e Organização

# Convertendo as Datas
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt,format='%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)
str(cidadesBrasil)
# Carregando os subsets

# Porto Alegre
poa <- subset(cidadesBrasil, City == 'Porto Alegre')
poa <- subset(poa, Year %in% c(1796,1846,1896,1946,1996,2012))

# Manaus
ma <- subset(cidadesBrasil, City == 'Manaus')
ma <- subset(ma, Year %in% c(1796,1846,1896,1946,1996,2012))

# Recife
recf <- subset(cidadesBrasil, City=='Recife')
recf <- subset(recf,Year %in% c(1796,1846,1896,1946,1996,2012))


# Construindo os Plots
p_poa <- ggplot(poa, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Porto Alegre") +
  theme(plot.title = element_text(size = 18))

p_ma <- ggplot(ma, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Manaus") +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))


# Plotando
p_poa
p_ma
p_recf
