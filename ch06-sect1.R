# 이전 메모리 제거
rm(list = ls())

head(mtcars)
str(mtcars)

# code 6-1
wt <- mtcars$wt                  # 중량 자료
mpg <- mtcars$mpg                # 연비 자료
plot(wt, mpg,                    # 2개 변수(x축, y축)
     main="중량-연비 그래프",    # 제목
     xlab="중량",                # x축 레이블
     ylab="연비(MPG)",           # y축 레이블
     col="orange",                  # point의 color
     pch=19)                     # point의 종류

plot(mpg~wt,                    # 2개 변수(x축, y축)
     main="중량-연비 그래프",    # 제목
     xlab="중량",                # x축 레이블
     ylab="연비(MPG)",           # y축 레이블
     col="blue",                  # point의 color
     pch=25)                     # point의 종류

# code 6-2
# drat: 후방 차축비(rear axle ratio)
vars <- c("mpg","disp","drat","wt")    # 대상 변수
target <- mtcars[,vars]
head(target)
pairs(target,                          # 대상 데이터
      main="Multi Plots")

# code 6-3
iris.2 <- iris[,3:4]                   # 데이터 준비
point <- as.numeric(iris$Species)      # 점의 모양
point                                  # point 내용 출력
color <- c("red","green","blue")       # 점의 컬러
color[1]
plot(iris.2,
     main="Iris plot",
     pch=c(point),
     # col=color[point])
     col='skyblue')

plot(iris.2,
     main="Iris plot",
     pch=rep(c(10, 11, 12), each=50),
     col=color[point])

for(i in 1:255){
  plot(1,main = 'color', col=rgb(i/255, (255-i)/255, abs(128-i)/255),cex=5, pch=6)
}
# i 값이 0부터 255까지 변하는 색상
i_values <- seq(0, 255, length.out = 256)

# RGB 값 계산
colors <- rgb(i_values / 255, (255 - i_values) / 255, abs(128 - i_values) / 255)
# x 값 생성 (0부터 2*pi까지)
x <- seq(0, 2*pi, length.out = 100)

# y 값은 x에 대한 사인 함수
y <- sin(x)
# Plot 생성
plot(x,y, rep(1, length(i_values)), col = colors, pch = 19, cex = 2, xlab = "i 값", ylab = "Color 변환", main = "RGB 색상 변화")

sin(30)
# Plotting 12 different pch values (0 to 11) in a 3x4 grid
par(mfrow = c(3, 4))  # Set the layout to 3 rows and 4 columns

# Loop through pch values from 0 to 11
for (i in 0:11) {
  plot(1:3, 1:3,type= 'b', pch = i, cex = , main = paste("pch =", i), xlab = "", ylab = "", xaxt = 'n', yaxt = 'n')
}


library(ggplot2)

# mtcars 데이터셋 불러오기
data(mtcars)

# 선형 회귀 모델 적합 (mpg를 wt에 대해 예측)
model <- lm(mpg ~ wt, data = mtcars)

# 예측값 계산
predicted_values <- predict(model)

# 관측값과 예측값을 데이터프레임으로 결합
results <- data.frame(Observed = mtcars$mpg, Predicted = predicted_values)

# ggplot을 사용하여 관측값과 예측값 비교 그래프 그리기
ggplot(results, aes(x = Observed, y = Predicted)) +
  geom_point() +  # 산점도
  geom_abline(slope = 1, intercept = 0, color = "red") +  # y = x 선 (완벽한 예측선)
  labs(title = "Observed vs Predicted (mpg)",
       x = "Observed mpg",
       y = "Predicted mpg") +
  theme_minimal()

# mtcars 데이터셋 불러오기
data(mtcars)

# 선형 회귀 모델 적합 (mpg를 wt에 대해 예측)
model <- lm(mpg ~ wt, data = mtcars)

# 예측값 계산
predicted_values <- predict(model)

# 기본 산점도 그리기
plot(mtcars$wt, mtcars$mpg, main = "Observed vs Predicted (mpg)",
     xlab = "Weight (wt)", ylab = "Miles per Gallon (mpg)", pch = 19, col = "blue")

# 세그먼트 추가: 각 관측값에서 예측값까지 선을 그리기
segments(x0 = mtcars$wt, y0 = mtcars$mpg, x1 = mtcars$wt, y1 = predicted_values, 
         col = "gray", lwd = 1, lty = 2)  # 회색 점선으로 세그먼트 추가
#####################################
# 필요한 라이브러리 로드
library(ggplot2)

# 데이터 준비 (mtcars 데이터셋 사용)
data(mtcars)

# 선형 회귀 모델 생성 (mpg ~ hp)
model <- lm(mpg ~ hp, data = mtcars)

# 예측값 계산
predictions <- predict(model)

# 데이터프레임에 예측값 추가
mtcars$predicted <- predictions

# 산점도와 회귀선 그리기
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue") +
  geom_line(aes(y = predicted), color = "red") +
  labs(title = "MPG vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon") +
  theme_minimal()

# 실제값과 예측값 비교 그래프
ggplot(mtcars, aes(x = mpg, y = predicted)) +
  geom_point(color = "green") +
  geom_abline(intercept = 0, slope = 1, color = "red", linetype = "dashed") +
  labs(title = "Actual vs Predicted MPG",
       x = "Actual MPG",
       y = "Predicted MPG") +
  theme_minimal()

# 데이터 준비 (mtcars 데이터셋 사용)
data(mtcars)

# 선형 회귀 모델 생성 (mpg ~ hp)
model <- lm(mpg ~ hp, data = mtcars)

# 예측값 계산
predictions <- predict(model)

# MPG vs Horsepower 그래프
plot(mtcars$hp, mtcars$mpg, 
     main="MPG vs Horsepower", 
     xlab="Horsepower", 
     ylab="Miles per Gallon",
     col="blue", 
     pch=16)

# 회귀선 추가
abline(model, col="red")

# 새 창에 Actual vs Predicted MPG 그래프 그리기
dev.new()
plot(mtcars$mpg, predictions, 
     main="Actual vs Predicted MPG", 
     xlab="Actual MPG", 
     ylab="Predicted MPG",
     col="green", 
     pch=16)

# 기준선 (y=x) 추가
abline(0, 1, col="red", lty=2)

########################################
# 데이터 생성
X <- c(1, 2, 2, 3, 5, 5, 7, 6, 10, 11, 11, 12)
Y <- c(1, 0, 1, 4, 3, 2, 6, 5, 9, 13, 15, 16)

# 선형 회귀 모델 생성
model <- lm(Y ~ X)

# 예측값 계산
predicted <- predict(model)

# 그래프 그리기
plot(X, Y, main="관측값과 예측값", xlab="X", ylab="Y", pch=16)
abline(model, col="red")
points(X, predicted, col="blue", pch=4)
legend("topleft", legend=c("관측값", "예측값", "회귀선"), 
       col=c("black", "blue", "red"), pch=c(16, 4, -1), lty=c(0, 0, 1))

Y <- c(2,3,5,7,11)

# 선형 회귀 모델 적합model <- lm(Y ~ X)

# 예측값 계산predicted_values <- predict(model)

# 원래 데이터와 예측값을 포함한 산점도 그리기plot(X, Y, main = "관측값과 예측값", xlab = "X 값", ylab = "Y 값", pch =19, col = "blue")
points(X, predicted_values, col = "red", pch =19) # 예측값을 빨간 점으로 추가abline(model, col = "green") # 회귀선 추가legend("topleft", legend = c("관측값", "예측값", "회귀선"), col = c("blue", "red", "green"), pch =19)
