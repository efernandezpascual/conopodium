# read the data

dati <- read.table("conopodium.txt", header = T, row.names = 1)

dati
str (dati)
summary (dati)
dati = as.data.frame (dati)
colnames(dati)

#check normality

shapiro.test(dati$Tb)
par(mfrow=c(2,3))
hist(dati$Tb)
qqnorm(dati$Tb)
boxplot(dati$Tb)

shapiro.test(dati$To)
par(mfrow=c(2,3))
hist(dati$To)
qqnorm(dati$To)
boxplot(dati$To)

shapiro.test(dati$Tc)
par(mfrow=c(2,3))
hist(dati$Tc)
qqnorm(dati$Tc)
boxplot(dati$Tc)

shapiro.test(dati$initial.embryo)
par(mfrow=c(2,3))
hist(dati$initial.embryo)
qqnorm(dati$initial.embryo)
boxplot(dati$initial.embryo)

shapiro.test(dati$seed.dry.mass)
par(mfrow=c(2,3))
hist(dati$seed.dry.mass)
qqnorm(dati$seed.dry.mass)
boxplot(dati$seed.dry.mass)

shapiro.test(dati$mean.max.hot)
par(mfrow=c(2,3))
hist(dati$mean.max.hot)
qqnorm(dati$smean.max.hot)
boxplot(dati$mean.max.hot)

shapiro.test(dati$mean.min.cold)
par(mfrow=c(2,3))
hist(dati$mean.min.cold)
qqnorm(dati$mean.min.cold)
boxplot(dati$mean.min.cold)

shapiro.test(dati$mean.pre.dry)
par(mfrow=c(2,3))
hist(dati$mean.pre.dry)
qqnorm(dati$mean.pre.dry)
boxplot(dati$mean.pre.dry)

#linear models

Tc.model.1 <-lm(Tc ~ mean.max.hot + mean.min.cold + mean.pre.dry, data = dati)
summary(Tc.model.1)
AIC(Tc.model.1)
Anova(Tc.model.1, type = "II")
Tc.model.2 <-lm(Tc ~ mean.max.hot + mean.pre.dry, data = dati)
summary(Tc.model.2)
AIC(Tc.model.2)
Anova(Tc.model.2, type = "II")
Tc.model.3 <-lm(Tc ~ mean.pre.dry, data = dati)
summary(Tc.model.3)
AIC(Tc.model.3)
Anova(Tc.model.3, type = "II")



To.model.1 <-lm(To ~ mean.max.hot + mean.min.cold + mean.pre.dry, data = dati)
summary(To.model.1)
AIC(To.model.1)
Anova(To.model.1, type = "II")
To.model.2 <-lm(To ~ mean.min.cold + mean.pre.dry, data = dati)
summary(To.model.2)
AIC(To.model.2)
Anova(To.model.2, type = "II")
To.model.3 <-lm(To ~ mean.min.cold, data = dati)
summary(To.model.3)
AIC(To.model.3)
Anova(To.model.3, type = "II")
To.model.4 <-lm(To ~ 1, data = dati)
summary(To.model.4)
AIC(To.model.4)
Anova(To.model.4, type = "II")



Tb.model.1 <-lm(Tc ~ mean.max.hot + mean.min.cold + mean.pre.dry, data = dati)
summary(Tb.model.1)
AIC(Tb.model.1)
Anova(Tb.model.1, type = "II")
Tb.model.2 <-lm(Tc ~ mean.max.hot + mean.pre.dry, data = dati)
summary(Tb.model.2)
AIC(Tb.model.2)
Anova(Tb.model.2, type = "II")
Tb.model.3 <-lm(Tc ~ mean.pre.dry, data = dati)
summary(Tb.model.3)
AIC(Tb.model.3)
Anova(Tb.model.3, type = "II")














