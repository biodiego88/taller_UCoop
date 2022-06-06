setwd("/cloud/project")

bd=read.csv("Bibliotecas_Comunitarias..csv")

class(bd)

summary(bd)

head(bd)

# Contamos los valores nulos NA por columna

sapply(bd, function(x) sum(is.na(x)))

# Algunas filas tienen erróneamente el valor N.A.

bd$Código.Sector.Catastral[bd$Código.Sector.Catastral=='N.A.']<-'NA'


# Calculamos el promedio y la desviación estándar de nuestra variable de 
# interés, utilizamos "na.rm=T" para que no tenga 
# en cuenta los NA #

bd$Código.Sector.Catastral=as.numeric(bd$Código.Sector.Catastral)

mean(bd$Código.Sector.Catastral, na.rm = T)

sd(bd$Código.Sector.Catastral, na.rm = T)

# la desviación estándar alta nos indica que los datos no se agrupan cerca 
# del promedio puede indicar datos atípicos o erróneos en la muestra, en
# este caso se trata de un codigo que es variable 

# Comprobamos datos atípicos con un grafico de caja y bigotes
bd$Código.Sector.Catastral=as.numeric(bd$Código.Sector.Catastral)
boxplot(bd$Código.Sector.Catastral)

# A diferencia de una variable sin outliers
boxplot(bd$Código.del.centro)
