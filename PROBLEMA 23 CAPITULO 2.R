M=c(75,77,78,79,77,73,78,79,78,80)
H=c(74,72,77,76,76,73,75,73,74,75)
n=length(M)
n
n=length(H)
n

media=mean(M)
std=sd(M)
media
std

media=mean(H)
std=sd(H)
media
std

df=data.frame(M=M,H=H)
df=stack(df)

names(df)=c("Y","Trat")
df
boxplot(Y~Trat,data=df)

t.test(M,H)

names(df)=c("Temp","Genero")
df

str(df)

boxplot(Temp~Genero,data=df)


