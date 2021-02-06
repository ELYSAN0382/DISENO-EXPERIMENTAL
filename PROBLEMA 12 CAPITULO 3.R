setwd("C:/Users/SOPORTE/Desktop/POSTGRADOiNVISTIGACIÓN/PRACTICA 2")
df=read.csv("FRIJOLES.csv",sep=";")
df

str(df)

df$CONTROL=as.factor(df$CONTROL)
str(df)

boxplot(T~CONTROL,data=df)

modelo=aov(T~CONTROL,data=df)
summary(modelo)

1-pf(1.77,6,14)

tk=TukeyHSD(modelo)
tk

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)


library("car")
leveneTest(T~CONTROL,data=df)

plot(modelo$fitted.values,modelo$residuals)
abline(h=0)