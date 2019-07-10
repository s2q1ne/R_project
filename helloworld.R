3+4
mode("hi")
vec_cx <- c(1, 2, 3, "4.4")
mode(vec_cx)
vec_cx

x1 <- 10.8
mode(x1)
x1 <- "아녕하세련"
mode(x1)
x1 <- FALSE
x2 <- 1+3i
mode(x2)
mode(x1)

is.numeric(x1)
is.complex(x2)
is.character(x1)
is.character(x2)

x1 <- c(1, "love", TRUE, 2*7)
x1 <- seq(from=30, to=10, by=-1)

v1 <- rep("a", times=5)
v2 <- rep(c("a","b"), each=3, times=2)

v3 <- factor(v2)
levels(v3)

x1 <- c(2, 3, 45, 6, "da")
names(x1) <- c("hi", "hel", "ha", "ho")
#names는 행렬 이름 지정해줄 때 좋을 것 같당

x1[2]
x1[2:3]
#인덱싱은 1부터 시작한다는 점에 유의하자.

x1[seq(from=1, to=5, by=2)]
names(x1[seq(from=1, to=5, by=2)])
x1[c(1,2,9)]
x1[-c(2, 3, 4)]
#-는 해당 원소를 제외한 여집합을 나타내준다

v5 = c("A")

#벡터 + 벡터(numeric)
#벡터 - 벡터(numeric)
#벡터 + numeric
#벡터 - numeric
#union(A, B) 벡터 합집합
#setdiff(A, B) A-B
#intersect(A, B) 교집합
#벡터 동일 타입이 아니면, 서로 길이가 다르면 오류가 발생한다.

v8 <- c(2, 3,4,5,6,7,8,9,1)
v9 <- c(3, 4, 5, 6, 7, 8, 9, 10, 11)

c(1,3,5)+1
c(1,3,5)+c(2,4,6)

#1번 문제
dat4 <- seq(from=1, to=20, by=2)

#2번 문제

vec1 <- c('사과', '뱀', '감', '버섯', '고구마')
vec1[-3]

#3번 문제
vec1 <- c('봄', '가을', '여름', '겨울')
vec2 <- c('봄', '가을', '늦여름','초가을')
union(vec1, vec2)


#4번 문제

x <- seq(from=1, to=1000, by=2)
x[3:12]


#5번 문제

i <- seq(from=10, to=100, by=1)
sum( i **3 + 4* i**2 )

#요인(factor) : 분류할 떄 쓰는 건가

mode("sad")
is.complex(3)
is.complex(3+4)
is.complex(3+4i)


m4 <- matrix( 1:10, nrow=5, ncol=2, byrow=TRUE)
m4

m1 <- 1:6
m2 <- 3:8
m5 <- rbind(m1,m2)
m5

m6 <- list( 1,2,3)
m7 <- list(m6, m6)
m8 <- c(223,231,213,2, 30)
m9 <- c(224, 201, 219, 10, 20)
m10 <- data.frame( m8, m9, stringsAsFactors=TRUE )
str(m10)
View(m10)

id = 1:5 
age = c(29, 32, 47, 35, 23) 
gender = gender = c("f","m","m","f","f")
height = c(163, 177, 172, 157, 169) 

df1 = data.frame(id, age, gender, height)
str(df1)    # df1의 구조를 볼 수 있음

df2 = data.frame(id, age, gender, height, stringsAsFactors=FALSE)
str(df2) # df2의 구조를 볼 수 있음

mode(df2$gender)
d10 <- c(1,2,3)
prop.table( table(c(1,2,3)))

install.packages("pixmap")

mtrush <- read.pnm("mtrush1.pnm")
mtrush
plot(mtrush)
str(mtrush)
mtrush@grey
mtrush@grey+0.1
mtrush2 <- mtrush@grey+0.1
mtrush@grey[20:80, 20:80] <- 0.4
mtrush@grey[170:190, 230:240] <- 0.9
plot(mtrush)
plot(c(3,3,3,6))
plot(mtrush3)
library(help=datasets)
bo <- head(iris)

#$ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4
#$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9
#$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7
#$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4
#$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1
levels(iris$Species)
aggregate( Sepal.Width ~ Species, iris, mean)
subset(iris, Species=="setosa" & Sepal.Length >5)
summary(subset(iris, Species=="setosa" ))

data <- read.csv("diet.csv", header=T)
data
diff <- data$Before - data$After
boxplot(diff)
mean_diff <- mean(diff)

sd_diff <- sd(diff)

t.test(data$Before, data$After, alternative=c("two.sided"), paired=TRUE, conf.level=0.95)

demog <- read.csv("demog.csv", sep=",", header=F, stringsAsFactors = F)
View(demog)

head(demog, n=10)


A<-read.table("test.txt", header=T, sep=",", stringsAsFactors = F)
head(A)

str(demog)

demog<- demog[-1,] 
rownames(demog) <- NULL
View(demog)
demog <- demog[-49,]

demog$year2 <- as.numeric(demog$V1)
demog$cdr2 <- as.numeric(demog$V2)
demog$tfr2 <- as.numeric(demog$V3)
demog$marn2 <- as.numeric(demog$V4)
demog$leo2 <- as.numeric(demog$V5)

sdemog <- demog[6:10]
str(sdemog)
names(sdemog) = c("year", "cdr", "tfr", "marn", "leo")
write.table(sdemog, file="sdemog.csv", sep=",", row.names=F, col.names = T)

marn <- read.csv("marn.csv", sep=",", header=T, stringsAsFactors= F)
View(marn)
names(marn) <- c("year", "seoul", "busan", "daegu", "incheon", "gwangju")
marn$year <- as.numeric(marn$year)
marn$seoul <- as.numeric(marn$seoul)
marn$busan <- as.numeric(marn$busan)
marn$daegu <- as.numeric(marn$daegu)
marn$incheon <- as.numeric(marn$incheon)
marn$gwanju <- as.numeric(marn$gwangju)

write.table(marn, file="smarn.csv", sep=",", row.names=F, col.names =T)


setwd("D:/P-TH/R_projects")      ## 작업디렉토리 설정 
sdemog <- read.csv("sdemog.csv", sep=",", header=T, stringsAsFactor=FALSE)
View(sdemog)
str(sdemog)

sdemog$year_c3 = cut(sdemog$year, breaks=c(1969,1980,1990,2000,2010,2020), include.lowest = T, right=F, labels=c("1970s", "1980s", "1990s", "2000s", "2010s"))
sdemog$tfr_c <- cut(sdemog$tfr, breaks=c(0, 1.3, 2.1, 3000), include.lowest = T, right=F, labels=c("llf","repl","high"))

table(sdemog$tfr_c)
str(sdemog)

table(sdemog$tfr_c, useNA="ifany")
table(sdemog$year_c3, useNA="ifany")

table(sdemog$year_c3, sdemog$tfr_c, useNA="ifany")

prop.table( table(sdemog$year_c3, sdemog$tfr_c),margin=1)*100

#margin : 1 -> 행에 대한 백분율
#margin : 0 -> 열에 대한 백분율
#양적 변수의 분포 : year, leo
#결측값에 대한 처리 옵션 : na.rm=T

tapply(sdemog$leo, sdemog$year_c3, mean, na.rm=T)

cor(sdemog$cdr, sdemog$tfr)
cor(cbind(sdemog$cdr, sdemog$tfr, sdemog$leo), use="complete.obs")

x <- c(3,5,8,11,13)
y <- 1:5
z <- data.frame(x,y)

cor(z$x, z$y)
cor.test(z$x, z$y)


barplot(table(sdemog$tfr_c))

barplot(table(sdemog$tfr_c), ylim=c(0,20), col=1:3, xlab="Categorical TFRs", ylab="Frequencies", names.arg=c("Lowest-low","Replacement", "High"), main="Frequencies of Categorical TFRs")

bp <- barplot(table(sdemog$tfr_c, sdemog$year_c3), 
beside=T, ylim=c(0, 12), col=1:3, 
xlab="Categorical TFRs", ylab="Proportion", 
names.arg=c("1970s", "1980s", "1990s", "2000s", "2010s"))

text(bp, 0, pos=3, c("llf","repl","high"), cex=0.3)

table(sdemog$tfr_c, sdemog$year_c3)

hist(sdemog$leo, main="", ylab="Frequency", xlab="Life expectancy at birth", breaks=c(60+0:9*3), xaxt="n")
axis(side=1, at=(60+0:9*3))
#히스토그램

a <- tapply(sdemog$leo, sdemog$year_c3, mean)
barplot(a, ylim=c(0, 90),main="기대수명", xlab="년도", ylab="기대수명")

b <- tapply(tfr, year_c3, mean, na.rm=TRUE)
barplot(b, ylim=c(0, 5),main="연도별 합계출산률", xlab="년도", ylab="합계출산률")

c <- tapply(cdr, tfr_c, mean, na.rm=TRUE)
barplot(c, ylim=c(0, 10) )

plot(sdemog$year, sdemog$tfr)
plot(sdemog$year, sdemog$tfr, type="l")

x <- 0.3818 + 2.1009i
y <- 374.9 * 100
y/x

gdp <- read.csv("demog510.csv", sep=",", header=T)
View(gdp)
str(gdp)

ndemog <- read.csv("ndemog.csv", sep=",", header=T)
View(ndemog)
str(ndemog)

mer <- merge(ndemog, gdp)
View(mer)

a <- tapply(gdpto, tfr_c, mean)
b<-tapply(gdppc, tfr_c, mean)
attach(mer)
c<-rbind(a,b)
row.names(c)<-c("국내총생산", "1인당총생산")
c <- round(c, digit=0)
View(c)

plot(year, gdpto)
plot(year, gdppc)
write.csv(mer, file="merge.csv")


shdata <- read.csv("sample_shdata.csv", sep=",", header=T)
View(shdata)

#setwd("C:/r1")
#getwd()

gong <- shdata$gong
gend <- shdata$gender
mobile <- shdata$mobile
loca <- shdata $ local
computer <- shdata$computer

View(gend)
table(gend)
prop.table(table(loca))

mean(gong)
sd(gong)

mean(computer)

plot(gong, computer)

cor.test(shdata$computer, shdata$gong)
cor.test(shdata$mobile, shdata$gong)
cor.test(computer, mobile)


dat <- read.csv("coding_y.csv", header=T)
str(dat)
View(dat)

install.packages("descr")
library(descr)

gend2 <- freq(dat$gend, plot=F)
grade2 <- freq(dat$grade, plot=F)


chisq.test(dat$gend, dat$eating)


dataframe <- read.csv("captcha_s.csv", header=T, sep=",")
View(data)
summary(data)
cor(data)

temp2<-c(0)
for(i in 1:30){
    temp2[length(temp2)+1] <- cor(data$ctime*i+data$itime, data$crec)
}

summary(temp2)
temp2 <- temp2[-c(0)]
## 점수 산정 방식 산출

cor( data)
## Library 사용 
library(PerformanceAnalytics)
library(corrplot)

dataframe <- read.csv("captcha.csv")

str(dataframe)

View(data)
newcor <- data$itime+data$ctime*2 
newcor2 <- data$crec

cor(cbind(newcor, newcor2))
#인터넷 사용시간과 캡챠 사용 빈도

#cor(correlation1$itime+correlation1$ctime*2, correlation1$crec)
cor(correlation1)


plot(correlation1)#산점도 
pairs(correlation1,panel=panel.smooth)#추세선 

chart.Correlation(correlation1,histogram= TRUE, pch = 15)

correlation1.cor <- cor(correlation1)

corrplot(correlation1.cor,method="number")

##########


attach(dataframe)
lm(itime ~ ctime)
# y = b0 + b1x + []
# itime = 1.527 +0. 404 ctime