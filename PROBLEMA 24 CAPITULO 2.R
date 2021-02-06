TB=c(17.2,17.5,18.6,15.9,16.4,17.3,16.8,18.4,16.7,17.6)
TA=c(21.4,20.9,19.8,20.4,20.6,21.0,20.8,19.9,21.1,20.3)

n=length(TB)
n
n=length(TB)
n

media=mean(TA)
std=sd(TA)
media
std

media=mean(TB)
std=sd(TB)
media
std

df=data.frame(TB=TB,TA=TA)
df=stack(df)

names(df)=c("T","Trat")
df
boxplot(T~Trat,data=df)

t.test(TB,TA)

str(df)

var(TB)

var(TA)