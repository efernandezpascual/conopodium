library(drc)
library (readxl)
library(lme4)
library(dplyr)

#read the whole dataset

dat = read_xlsx("betula.temp.see.xcurvefitting.xlsx", 1)
warnings()
str(dat)
dat = as.data.frame (dat)
head(dat)
summary(dat)
str(dat)


rm(dat)
rm(gal6)
rm(gal15)
rm(gal25)

# transform data
dat$Daily.germ = as.numeric (dat$Daily.germ)
dat$starttime = as.numeric (dat$starttime)
dat$endtime = as.numeric (dat$endtime)
dat$REP = as.factor (dat$REP)
dat$Idtreatment = as.factor (dat$Idtreatment)

gal15 = read_xlsx("betula.temp.see.xcurvefitting.spa15.xlsx", 1)
gal15 = as.data.frame (gal15)
# transform data
gal15$Daily.germ = as.numeric (gal15$Daily.germ)
gal15$starttime = as.numeric (gal15$starttime)
gal15$endtime = as.numeric (gal15$endtime)
gal15$REP = as.factor (gal15$REP)
gal15$Idtreatment = as.factor (gal15$Idtreatment)


gal25 = read_xlsx("betula.temp.see.xcurvefitting.spa25.xlsx", 1)
gal25 = as.data.frame (pol25)
# transform data
gal25$Daily.germ = as.numeric (gal25$Daily.germ)
gal25$starttime = as.numeric (gal25$starttime)
gal25$endtime = as.numeric (gal25$endtime)
gal25$REP = as.factor (gal25$REP)
gal25$Idtreatment = as.factor (gal25$Idtreatment)


fresh5 = subset(gal25, gal25$Idtreatment=="05°Cfresh")
strat5 = subset(gal25, gal25$Idtreatment=="05°Cstrat")

fresh10 = subset(gal25, gal25$Idtreatment=="10°Cfresh")
strat10 = subset(gal25, gal25$Idtreatment=="10°Cstrat")

fresh15 = subset(gal25, gal25$Idtreatment=="15°Cfresh")
strat15 = subset(gal25, gal25$Idtreatment=="15°Cstrat")

fresh20 = subset(gal25, gal25$Idtreatment=="20°Cfresh")
strat20 = subset(gal25, gal25$Idtreatment=="20°Cstrat")

fresh25 = subset(gal25, gal25$Idtreatment=="25°Cfresh")
strat25 = subset(gal25, gal25$Idtreatment=="25°Cstrat")

fresh30 = subset(gal25, gal25$Idtreatment=="30°Cfresh")
strat30 = subset(gal25, gal25$Idtreatment=="30°Cstrat")

gal6 = read_xlsx("betula.temp.see.xcurvefitting.spa6.xlsx", 1)
gal6 = as.data.frame (gal6)
# transform data
gal6$Daily.germ = as.numeric (gal6$Daily.germ)
gal6$starttime = as.numeric (gal6$starttime)
gal6$endtime = as.numeric (gal6$endtime)
gal6$REP = as.factor (gal6$REP)
gal6$Idtreatment = as.factor (gal6$Idtreatment)


fresh5 = subset(gal15, gal15$Idtreatment=="05°Cfresh")
strat5 = subset(gal15, gal15$Idtreatment=="05°Cstrat")

fresh10 = subset(gal15, gal15$Idtreatment=="10°Cfresh")
strat10 = subset(gal15, gal15$Idtreatment=="10°Cstrat")

fresh15 = subset(gal15, gal15$Idtreatment=="15°Cfresh")
strat15 = subset(gal15, gal15$Idtreatment=="15°Cstrat")

fresh20 = subset(gal15, gal15$Idtreatment=="20°Cfresh")
strat20 = subset(gal15, gal15$Idtreatment=="20°Cstrat")

fresh25 = subset(gal15, gal15$Idtreatment=="25°Cfresh")
strat25 = subset(gal15, gal15$Idtreatment=="25°Cstrat")

fresh30 = subset(gal15, gal15$Idtreatment=="30°Cfresh")
strat30 = subset(gal15, gal15$Idtreatment=="30°Cstrat")





fresh5 = subset(gal6, gal6$Idtreatment=="05°Cfresh")
strat5 = subset(gal6, gal6$Idtreatment=="05°Cstrat")

fresh10 = subset(gal6, gal6$Idtreatment=="10°Cfresh")
strat10 = subset(gal6, gal6$Idtreatment=="10°Cstrat")

fresh15 = subset(gal6, gal6$Idtreatment=="15°Cfresh")
strat15 = subset(gal6, gal6$Idtreatment=="15°Cstrat")

fresh20 = subset(gal6, gal6$Idtreatment=="20°Cfresh")
strat20 = subset(gal6, gal6$Idtreatment=="20°Cstrat")

fresh25 = subset(gal6, gal6$Idtreatment=="25°Cfresh")
strat25 = subset(gal6, gal6$Idtreatment=="25°Cstrat")

fresh30 = subset(gal6, gal6$Idtreatment=="30°Cfresh")
strat30 = subset(gal6, gal6$Idtreatment=="30°Cstrat")






#subset the data accordig to each treatment

fresh5 = subset(dat, dat$Idtreatment=="05°Cfresh")
strat5 = subset(dat, dat$Idtreatment=="05°Cstrat")

fresh10 = subset(dat, dat$Idtreatment=="10°Cfresh")
strat10 = subset(dat, dat$Idtreatment=="10°Cstrat")

fresh15 = subset(dat, dat$Idtreatment=="15°Cfresh")
strat15 = subset(dat, dat$Idtreatment=="15°Cstrat")

fresh20 = subset(dat, dat$Idtreatment=="20°Cfresh")
strat20 = subset(dat, dat$Idtreatment=="20°Cstrat")

fresh25 = subset(dat, dat$Idtreatment=="25°Cfresh")
strat25 = subset(dat, dat$Idtreatment=="25°Cstrat")

fresh30 = subset(dat, dat$Idtreatment=="30°Cfresh")
strat30 = subset(dat, dat$Idtreatment=="30°Cstrat")


rm(fresh5)
rm(strat5)
rm(fresh10)
rm(strat10)
rm(fresh15)
rm(strat15)
rm(fresh20)
rm(strat20)
rm(fresh25)
rm(strat25)
rm(fresh30)
rm(strat30)

#subset each treatment according to the population

rm(control.gal)
rm(control.sar)
rm(control.cam)
rm(control.laz)
rm(control.cro)
rm(control.ser)
rm(control.spa)
rm(control.pol)

### 5°C

galA

galA= subset(control.spa, control.spa$REP=="A")
galB= subset(control.spa, control.spa$REP=="B")
galC= subset(control.spa, control.spa$REP=="C")
galD= subset(control.spa, control.spa$REP=="D")

rm(galA)
rm(galB)
rm(galC)
rm(galD)


control.gal = subset(fresh5, fresh5$population=="Galvarina")
control.sar = subset(fresh5, fresh5$population=="Sartorius")
control.cam = subset(fresh5, fresh5$population=="Campania")
control.laz = subset(fresh5, fresh5$population=="Lazio")
control.cro = subset(fresh5, fresh5$population=="Croatia")
control.ser = subset(fresh5, fresh5$population=="Serbia")
control.spa = subset(fresh5, fresh5$population=="Spain")
control.pol = subset(fresh5, fresh5$population=="Poland")

control.gal = subset(strat5, strat5$population=="Galvarina")
control.sar = subset(strat5, strat5$population=="Sartorius")
control.cam = subset(strat5, strat5$population=="Campania")
control.laz = subset(strat5, strat5$population=="Lazio")
control.cro = subset(strat5, strat5$population=="Croatia")
control.ser = subset(strat5, strat5$population=="Serbia")
control.spa = subset(strat5, strat5$population=="Spain")
control.pol = subset(strat5, strat5$population=="Poland")

### 10°C

control.gal = subset(fresh10, fresh10$population=="Galvarina")
control.sar = subset(fresh10, fresh10$population=="Sartorius")
control.cam = subset(fresh10, fresh10$population=="Campania")
control.laz = subset(fresh10, fresh10$population=="Lazio")
control.cro = subset(fresh10, fresh10$population=="Croatia")
control.ser = subset(fresh10, fresh10$population=="Serbia")
control.spa = subset(fresh10, fresh10$population=="Spain")
control.pol = subset(fresh10, fresh10$population=="Poland")

control.gal = subset(strat10, strat10$population=="Galvarina")
control.sar = subset(strat10, strat10$population=="Sartorius")
control.cam = subset(strat10, strat10$population=="Campania")
control.laz = subset(strat10, strat10$population=="Lazio")
control.cro = subset(strat10, strat10$population=="Croatia")
control.ser = subset(strat10, strat10$population=="Serbia")
control.spa = subset(strat10, strat10$population=="Spain")
control.pol = subset(strat10, strat10$population=="Poland")

### 15°C

control.gal = subset(fresh15, fresh15$population=="Galvarina")
control.sar = subset(fresh15, fresh15$population=="Sartorius")
control.cam = subset(fresh15, fresh15$population=="Campania")
control.laz = subset(fresh15, fresh15$population=="Lazio")
control.cro = subset(fresh15, fresh15$population=="Croatia")
control.ser = subset(fresh15, fresh15$population=="Serbia")
control.spa = subset(fresh15, fresh15$population=="Spain")
control.pol = subset(fresh15, fresh15$population=="Poland")

control.gal = subset(strat15, strat15$population=="Galvarina")
control.sar = subset(strat15, strat15$population=="Sartorius")
control.cam = subset(strat15, strat15$population=="Campania")
control.laz = subset(strat15, strat15$population=="Lazio")
control.cro = subset(strat15, strat15$population=="Croatia")
control.ser = subset(strat15, strat15$population=="Serbia")
control.spa = subset(strat15, strat15$population=="Spain")
control.pol = subset(strat15, strat15$population=="Poland")


### 20°C

control.gal = subset(fresh20, fresh20$population=="Galvarina")
control.sar = subset(fresh20, fresh20$population=="Sartorius")
control.cam = subset(fresh20, fresh20$population=="Campania")
control.laz = subset(fresh20, fresh20$population=="Lazio")
control.cro = subset(fresh20, fresh20$population=="Croatia")
control.ser = subset(fresh20, fresh20$population=="Serbia")
control.spa = subset(fresh20, fresh20$population=="Spain")
control.pol = subset(fresh20, fresh20$population=="Poland")

control.gal = subset(strat20, strat20$population=="Galvarina")
control.sar = subset(strat20, strat20$population=="Sartorius")
control.cam = subset(strat20, strat20$population=="Campania")
control.laz = subset(strat20, strat20$population=="Lazio")
control.cro = subset(strat20, strat20$population=="Croatia")
control.ser = subset(strat20, strat20$population=="Serbia")
control.spa = subset(strat20, strat20$population=="Spain")
control.pol = subset(strat20, strat20$population=="Poland")

### 25°C

control.gal = subset(fresh25, fresh25$population=="Galvarina")
control.sar = subset(fresh25, fresh25$population=="Sartorius")
control.cam = subset(fresh25, fresh25$population=="Campania")
control.laz = subset(fresh25, fresh25$population=="Lazio")
control.cro = subset(fresh25, fresh25$population=="Croatia")
control.ser = subset(fresh25, fresh25$population=="Serbia")
control.spa = subset(fresh25, fresh25$population=="Spain")
control.pol = subset(fresh25, fresh25$population=="Poland")

control.gal = subset(strat25, strat25$population=="Galvarina")
control.sar = subset(strat25, strat25$population=="Sartorius")
control.cam = subset(strat25, strat25$population=="Campania")
control.laz = subset(strat25, strat25$population=="Lazio")
control.cro = subset(strat25, strat25$population=="Croatia")
control.ser = subset(strat25, strat25$population=="Serbia")
control.spa = subset(strat25, strat25$population=="Spain")
control.pol = subset(strat25, strat25$population=="Poland")

### 30°C

control.gal = subset(fresh30, fresh30$population=="Galvarina")
control.sar = subset(fresh30, fresh30$population=="Sartorius")
control.cam = subset(fresh30, fresh30$population=="Campania")
control.laz = subset(fresh30, fresh30$population=="Lazio")
control.cro = subset(fresh30, fresh30$population=="Croatia")
control.ser = subset(fresh30, fresh30$population=="Serbia")
control.spa = subset(fresh30, fresh30$population=="Spain")
control.pol = subset(fresh30, fresh30$population=="Poland")

control.gal = subset(strat30, strat30$population=="Galvarina")
control.sar = subset(strat30, strat30$population=="Sartorius")
control.cam = subset(strat30, strat30$population=="Campania")
control.laz = subset(strat30, strat30$population=="Lazio")
control.cro = subset(strat30, strat30$population=="Croatia")
control.ser = subset(strat30, strat30$population=="Serbia")
control.spa = subset(strat30, strat30$population=="Spain")
control.pol = subset(strat30, strat30$population=="Poland")

###################################################################################
ll2<-drm(Daily.germ ~ starttime+endtime, data=galA, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=galA, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=galA, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.sar, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.sar, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.sar, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.cam, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.cam, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.cam, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.laz, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.laz, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.laz, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.cro, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.cro, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.cro, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.ser, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.ser, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.ser, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.spa, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.spa, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.spa, fct=W2.2(), type="event")

ll2<-drm(Daily.germ ~ starttime+endtime, data=control.pol, fct=LL.2(), type="event")
w12<-drm(Daily.germ ~ starttime+endtime, data=control.pol, fct=W1.2(), type="event")
w22<-drm(Daily.germ ~ starttime+endtime, data=control.pol, fct=W2.2(), type="event")

summary(ll2)
summary(w12)
summary(w22)

rm(ll2)
rm(w12)
rm(w22)

AIC(ll2)
AIC(w12)
AIC(w22)

x11 ()
par(mfrow=c(1,3))
plot (ll2, broken=TRUE, bty = "l", type="all")
plot (w12, broken=TRUE, bty = "l", type="all")
plot (w22, broken=TRUE, bty = "l", type="all")

ED(ll2,c(10,20,30,40,50,60,70,80,90), interval="delta")
ED(w12,c(10,20,30,40,50,60,70,80,90), interval="delta")
ED(w22,c(10,20,30,40,50,60,70,80,90), interval="delta")

# Variance homogeneity 
x11 ()
par(mfrow=c(1,3))
plot(residuals(ll2) ~ fitted(ll2), main="Residuals vs Fitted")
abline(h=0)
plot(residuals(w12) ~ fitted(w12), main="Residuals vs Fitted")
abline(h=0)
plot(residuals(w22) ~ fitted(w22), main="Residuals vs Fitted")
abline(h=0)

# Normally of residuals
x11 ()
par(mfrow=c(1,3))
qqnorm(residuals(ll2))
qqline(residuals(ll2))
qqnorm(residuals(w12))
qqline(residuals(w12))
qqnorm(residuals(w22))
qqline(residuals(w22))

##################################################################################
getMeanFunctions(noParm = NA, fname = NULL, flist = NULL, display =TRUE)

rm(control.ll2)
rm(control.w12)
rm(control.w22)
rm(control.ll22)

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=fresh5, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=fresh5, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh5, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh5, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=strat5, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=strat5, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=strat5, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=strat5, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=fresh10, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=fresh10, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh10, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh10, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=strat10, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=strat10, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=strat10, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=strat10, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=fresh15, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=fresh15, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh15, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh15, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=strat15, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=strat15, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=strat15, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=strat15, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=fresh20, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=fresh20, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh20, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh20, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=strat20, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=strat20, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=strat20, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=strat20, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=fresh25, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=fresh25, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh25, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh25, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=strat25, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=strat25, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=strat25, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=strat25, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=fresh30, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=fresh30, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh30, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=fresh30, fct=LL2.2(), type="event")

control.ll2<-drm(Daily.germ ~ starttime+endtime, population, data=strat30, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, population, data=strat30, fct=W1.3(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, population, data=strat30, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, population, data=strat30, fct=LL2.2(), type="event")



control.ll2<-drm(Daily.germ ~ starttime+endtime, data=strat25, fct=LL.2(), type="event")
control.w12<-drm(Daily.germ ~ starttime+endtime, data=strat25, fct=W1.2(), type="event")
control.w22<-drm(Daily.germ ~ starttime+endtime, data=strat25, fct=W2.2(), type="event")
control.ll22<-drm(Daily.germ ~ starttime+endtime, data=strat25, fct=LL2.2(), type="event")



summary(control.ll2)
summary(control.w12)
summary(control.w22)
summary(control.ll22)

AIC(control.ll2)
AIC(control.w12)
AIC(control.w22)
AIC(control.ll22)

x11 ()
par(mfrow=c(1,4))
plot (control.ll2, broken=TRUE, bty = "l", type="all")
plot (control.w12, broken=TRUE, bty = "l", type="all")
plot (control.w22, broken=TRUE, bty = "l", type="all")
plot (control.ll22, broken=TRUE, bty = "l", type="all")

ED(control.ll2,c(10,20,30,40,50,60,70,80,90), interval="delta")
ED(control.w12,c(10,20,30,40,50,60,70,80,90), interval="delta")
ED(control.w22,c(10,20,30,40,50,60,70,80,90), interval="delta")
ED(control.ll22,c(10,20,30,40,50,60,70,80,90), interval="delta")


# Variance homogeneity 
x11 ()
par(mfrow=c(2,2))
plot(residuals(control.ll2) ~ fitted(control.ll2), main="Residuals vs Fitted")
abline(h=0)
plot(residuals(control.w12) ~ fitted(control.w12), main="Residuals vs Fitted")
abline(h=0)
plot(residuals(control.w22) ~ fitted(control.w22), main="Residuals vs Fitted")
abline(h=0)
plot(residuals(control.ll22) ~ fitted(control.ll22), main="Residuals vs Fitted")
abline(h=0)

# Normally of residuals
x11 ()
par(mfrow=c(2,2))
qqnorm(residuals(control.ll2))
qqline(residuals(control.ll2))

qqnorm(residuals(control.w12))
qqline(residuals(control.w12))

qqnorm(residuals(control.w22))
qqline(residuals(control.w22))

qqnorm(residuals(control.ll22))
qqline(residuals(control.ll22))




w12<-drm(Daily.germ ~ starttime+endtime, Idtreatment, data=MPa0.8, fct=W1.2(), type="event")
ED(w12,c(10,20,30,40,50,60,70,80,90), interval="delta")
rm(w12)


control = subset(dat, dat$treatment=="control")
MPa0.1 = subset(dat, dat$treatment=="MPa0.1")
MPa0.2 = subset(dat, dat$treatment=="Mpa0.2")
MPa0.4 = subset(dat, dat$treatment=="MPa0.4")
MPa0.6 = subset(dat, dat$treatment=="MPa0.6")
MPa0.8 = subset(dat, dat$treatment=="MPa0.8")
MPa1 = subset(dat, dat$treatment=="MPa1")






# Important: since the Weibull models are asymmetrical, the inflection point should be calculated 
ED(control.ll2,50,interval="delta")
ED(control.w12,50,interval="delta")
ED(control.ll22,50,interval="delta")

#l'errore standard dell'ultimo modello è più basso per cui è quello che fitta meglio
#il t50 è dato dalla colonna estimate

# Are the EDs different among the models?
edLL= data.frame(ED(control.ll2,c(10,50,90),interval="delta", display=FALSE),ll="Log-logistic")            
edW1 = data.frame(ED(control.w12,c(10,50,90),interval="delta", display=FALSE),ll="Weibull 1")
edW2 = data.frame(ED(control.ll22,c(10,50,90),interval="delta", display=FALSE),ll="logaritmic")
CombED = rbind(edLL,edW1,edW2)





control.gal.ll3<-drm(Daily.germ ~ starttime+endtime,data=control.gal, 
               fct=LL.2(), type="event")

help(drm)

AIC(control.gal.ll3)
summary(control.gal.ll3)
control.gal.ll3u<-drm(Daily.germ ~ starttime+endtime, data=control.gal, 
               fct=LL.3u())
warnings()

control.cam.ll3<-drm(Daily.germ ~ starttime+endtime, data=control.cam, 
               fct=LL.3(names=c("Slope","Max","T50")), type="event",
               upperl=c(NA,1,NA))


control.cro.ll3<-drm(Daily.germ ~ starttime+endtime, data=control.cro, 
               fct=LL.3(names=c("Slope","Max","T50")), type="event",
               upperl=c(NA,1,NA))


summary(control.gal.ll3u)
summary(control.cam.ll3)
summary(control.cro.ll3)

ED(control.gal.ll3,c(10,20,30,40,50,60,70,80,90), interval="delta")

# plot the fitted model
x11 ()
par(mfrow=c(1,2))
plot (control.gal.ll3, broken=TRUE, bty = "l")
plot (control.gal.ll3, broken=TRUE, bty = "l", type="all")

# Model accuracy
# 1) Take a look at the graph - the regression line should fit the data
# ok

# 2) Formal test
modelFit(control.gal.ll3)
# p-values <0.05 indicate a good model fit

# 3) Assumptions
# (1) Correct regression model 
# The model fits to the data

# (2) Variance homogeneity - the variance does not change along the line, i.e. there should not be a patterns
# (3) Normally of residuals - the points in the Q-Q plot should be along the line

x11 ()
par(mfrow=c(1,2))

# Variance homogeneity 
plot(residuals(control.gal.ll3) ~ fitted(control.gal.ll3), main="Residuals vs Fitted")
abline(h=0)

# Normally of residuals
qqnorm(residuals(control.gal.ll3))
qqline(residuals(control.gal.ll3))

#c'è una piccola deviazione dalla linea perchè ci sono pochi data point

# (4) Mutually independent measurement error - all the samples should be treated in the same way
# ok


AIC(control.gal1.ll3)


#questi danno dei problemi perchè la germ finale raggiunge il 100% in tutte le repliche.
#per questi trattamenti non fisso i valori massimi?

control.spa = subset(control, control$population=="Spain")
control.pol = subset(control, control$population=="Poland")
control.sar = subset(control, control$population=="Sartorius")



summary(control.spa)
summary(control.pol)
summary(control.sar)


control.sar.ll3<-drm(Daily.germ ~ starttime+endtime, data=control.sar, 
               fct=LL.3(names=c("Slope","Max","T50")), type="event",
               upperl=c(NA,1,NA))

summary(control.sar.ll3)
######################################

ALTRO APPROCCIO

#################################

#read the whole dataset

cam = read_xlsx("mean.germ.finale.peg2.xlsx", 1)
cro = read_xlsx("mean.germ.finale.peg.xlsx", 2)
gal = read_xlsx("mean.germ.finale.peg.xlsx", 3)
pol = read_xlsx("mean.germ.finale.peg.xlsx", 4)
sar = read_xlsx("mean.germ.finale.peg.xlsx", 5)
spa = read_xlsx("mean.germ.finale.peg.xlsx", 6)

cam = as.data.frame (cam)
cro = as.data.frame (cro)
gal = as.data.frame (gal)
pol = as.data.frame (pol)
sar = as.data.frame (sar)
spa = as.data.frame (spa)



cam.control.ll4 = drm (controllo ~ time, data=cam, fct = LL.4(names = c("Slope", "low", "Upper Limit", "LT50"), fixed = c(NA, 0, 1, NA)))
        
cam.control.ll3b<-drm(controllo ~ time, data=cam,fct=LL.3(names=c("Slope","Max","T50"), fixed = c(NA, 1, NA)))
cam.control.ll3a<-drm(controllo ~ time, data=cam,fct=LL.3u(names=c("Slope","Max","T50")))
cam.control.W1 = drm (controllo ~ time, data=cam, fct = W1.4()) # Weibull-I
cam.control.W2 = drm (controllo ~ time, data=cam, fct = W2.4()) # Weibull - II

AIC(cam.control.ll4)
AIC(cam.control.ll3b)
AIC(cam.control.ll3a)
AIC(cam.control.W1)
AIC(cam.control.W2)

# plot the fitted model
x11 ()
par(mfrow=c(3,2))
plot (cam.control.ll4, broken=TRUE, bty = "l")
plot (cam.control.ll4, broken=TRUE, bty = "l", type="all")

plot (cam.control.ll3a, broken=TRUE, bty = "l")
plot (cam.control.ll3a, broken=TRUE, bty = "l", type="all")

plot (cam.control.ll3b, broken=TRUE, bty = "l")
plot (cam.control.ll3b, broken=TRUE, bty = "l", type="all")

plot (cam.control.W1, broken=TRUE, bty = "l")
plot (cam.control.W1, broken=TRUE, bty = "l", type="all")

plot (cam.control.W2, broken=TRUE, bty = "l")
plot (cam.control.W2, broken=TRUE, bty = "l", type="a

# LL.2  Log-logistic (ED50 as parameter) with lower limit at 0 and upper limit at 1 
# W1.2  Weibull (type 1) with lower limit at 0 and upper limit at 1 
# W2.2  Weibull (type 2) with lower limit at 0 and upper limit at 1 
# LL2.2  Log-logistic (log(ED50) as parameter) with lower limit at 0 and upper limit at 1

cam.control.LL.3 = drm(controllo ~ time, data=cam, fct = LL.3())
cam.control.W1.2 = drm(controllo ~ time, data=cam, fct = W1.2())
cam.control.W2.2 = drm(controllo ~ time, data=cam, fct = W2.2())
cam.control.LL2.2 = drm(controllo ~ time, data=cam, fct = LL2.2())


summary(cam.control.LL.3)
summary(cam.control.W1.2)
summary(cam.control.W2.2 )
summary(cam.control.LL2.2)


AIC(cam.control.LL.3)
AIC(cam.control.W1.2)
AIC(cam.control.W2.2 )
AIC(cam.control.LL2.2)


x11 ()
par(mfrow=c(1,2))
plot (cam.control.LL.3, broken=TRUE, bty = "l")
plot (cam.control.LL.3, broken=TRUE, bty = "l", type="all")

plot (cam.control.W1.2, broken=TRUE, bty = "l")
plot (cam.control.W1.2, broken=TRUE, bty = "l", type="all")

plot (cam.control.W2.2, broken=TRUE, bty = "l")
plot (cam.control.W2.2, broken=TRUE, bty = "l", type="all")

plot (cam.control.LL2.2, broken=TRUE, bty = "l")
plot (cam.control.LL2.2, broken=TRUE, bty = "l", type="all")




modelFit(cam.control.LL.2)
modelFit(cam.control.ll3a)
modelFit(cam.control.ll3b)
modelFit(cam.control.W1)
modelFit(cam.control.W2)


getMeanFunctions(noParm = NA, fname = NULL, flist = NULL, display =TRUE)

 


ED(cam.control.ll3b,c(10,20,30,40,50,60,70,80,90), interval="delta")