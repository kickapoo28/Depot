

X9 <- X9[,-9]
<- full_join(X9,X8)
library(tidyverse)
X10$W_STC <- X10$W_STC %>% replace_na("0")
X10


View(X10)
X11 <- X3yearsdata_20200904
str(X9)
X9[,-9]

str(X11)
full_join(X9,X11)

library(lubridate)
str(X9)

X9 <- as.Date(X9$date, format = ''%Y/%m'')

head(X9)

View(X9)

# zoo 함수를 이용하여 Yearmon 형식으로 변경함

library(zoo)
X9$date <- as.yearmon(X9$date)
head(X9)
str(X9)

as.Date(X9%date, frac = 1)


X11$date <- as.yearmon(X11$date)
X11

X9,X11
x12 <- full_join(X9,X11)

X12
x12
library(doBy)


# x12 테이블의 NA값 제거

x12$W_STC <- x12$W_STC %>% replace_na("0")
x12$RCP <- x12$RCP %>% replace_na("0")
x12$DLV <- x12$DLV %>% replace_na("0")
x12$STC <- x12$STC %>% replace_na("0")

head(x12)

# 제거된 NA값은 문자 타입으로 변형, 다시 숫자로 변형시켜야함

x12$RCP <- as.numeric(x12$RCP)
x12$DLV <- as.numeric(x12$DLV)
x12$STC <- as.numeric(x12$STC)
x12$W_STC <- as.numeric(x12$W_STC)

head(x12) # head로 확인
str(x12)

# date,Code,name 별로 합을 구하면 된다

summaryBy(RCP+DLV+W_STC~date+Code+Name, date = x12, FUN = SUM)
x13 <- summaryBy(RCP+DLV+STC+W_STC~date+Code+Name, data = x12, FUN = sum) # doBy 패키지의 summaryBy함수 사용


head(x13)

# 합은 새로운 열을 만들어서 유형을 지정해준다

x13[,"Type"] <- c("Total") # 열 제목은 type, 내용은 Total로 채움
x13[,"Color"] <- c("Black") # 열 제목은 Color, 내용은 Black로 채움


x13

# 새로 생긴 열은 순서를 바꿔준다 (Rbind 작업을 하기위한 선제 조건)

x13 <- x13[,c(1,2,3,4,6,7,8,9,5)]

x13
x12
# X13의 열 제목으로 바꾸어 준다

names(x13)[5] <- "RCP"
names(x13)[6] <- "DLV"
names(x13)[7] <- "STC"
names(x13)[8] <- "W_STC"


x13

x12

#X12의 KPP 구분열 을 삭제한다

x12 <- x12[,-8]


x12
x13

# 합친다

x14 <- rbind(x12,x13) # x14로 칭한다

x14

str(x14)

test <- x12 %>% filter(Code == 101851,date == "2018-03")
View(test)


summaryBy(RCP+DLV+STC+W_STC~date+Code+Name, data = x12, FUN = sum)
x12
x12$RCP <- as.numeric(x12$RCP)
x12$DLV <- as.numeric(x12$DLV)
x12$STC <- as.numeric(x12$STC)
x12$W_STC <- as.numeric(x12$W_STC)


x12


summaryBy(RCP+DLV+STC+W_STC~date+Code+Name, data = x12, FUN = sum)
x12[,"Type"] <- c(Total)
x12

x14

head(x14
)

x9
X9
str(X9)

yearmon(X9$date)

X9$date <- as.yearmon(X9$date)
z <- X9$date

ztime(z) <- as.Date(time(z))

z




as.Date(X9$date)

mydata

rm(list=ls())

dev.off()

dataseet
dataset()

library(lubridate)

X9
library(openair)

install.packages("openair")
library(openair)
library(scales)

library(zoo)
as.POSIXct(X10$date,format = "%y-%m")   
X()
str(X10)
X10$date <- as.yearmon(X10$date) #날짜를 yearmon으로 바꾼다
as.Date(X10$date, frac = 1) #as.Date Frac 설정을 한다


X10$date <- as.POSIXct(X10$date,format = "%y-%m")# osixct로 다시 바꾼다 
X10$date <- as.Date(X10$date) ## 시간 설정 끝
str(X10)
input$dates

