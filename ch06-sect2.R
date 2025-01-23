# 이전 메모리 제거
rm(list = ls())

# code 6-4
beers = c(5,2,9,8,3,7,3,5,3,5)                 # 자료 입력
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,  # 자료 입력
         0.06,0.02,0.05)
tbl <- data.frame(beers,bal)                   # 데이터프레임 생성
tbl

plot(bal~beers, data=tbl)                 # 산점도
plot(bal~beers, tbl)                     # 산점도

res <- lm(bal~beers,data=tbl)
res# 회귀식 도출
summary(res)
abline(res,col=rgb(1,0,1), lwd=30)                                    # 회귀선 그리기
cor(beers,bal)                                 # 상관계수 계산
cor(bal, beers)                                 # 상관계수 계산

# code 6-5
cor(iris[,1:4])               # 4개 변수 간 상관성 분석
cor(iris[,1:4])

# mtcars 데이터셋 불러오기
data(mtcars)

# mpg와 wt 간의 상관계수 계산
cor(mtcars$mpg, mtcars$wt)
# corrplot 패키지 설치 및 로드
install.packages("corrplot")
library(corrplot)

# mtcars 데이터셋의 상관행렬 계산
cor_matrix <- cor(mtcars)
cor_matrix
# 상관행렬 시각화
corrplot(cor_matrix, method = "circle")

corrplot(cor(iris[,1:4]),method = "square")
