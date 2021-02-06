setwd("C:/Users/SOPORTE/Desktop/POSTGRADOiNVISTIGACIÓN/PRACTICA 2")
df=read.csv("RESIDUOS.csv",sep=";")
df

str(df)

df$EXPERIMENTO=as.factor(df$EXPERIMENTO)
str(df)

boxplot(P.RESIDUOS~EXPERIMENTO,data=df)

modelo=aov(P.RESIDUOS~EXPERIMENTO,data=df)
summary(modelo)

1-pf(73.14,1,48)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)


library("car")
leveneTest(P.RESIDUOS~EXPERIMENTO,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)