v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3              # v1의 2번째 값을 3으로 변경
v1
v1[c(1,5)] <- c(10,20)  # v1의 1, 5번째 값을 각각 10, 20으로 변경
v1

d <- c(1,4,3,7,8)
2*d 
d-5
3*d+4 

x <- c(1,2,3)
y <- c(4,5,6)
x+y               # 대응하는 원소끼리 더하여 출력
x*y               # 대응하는 원소끼리 곱하여 출력
z <- x + y        # x, y를 더하여 z에 저장
z

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)                          # d에 포함된 값들의 합
sum(2*d)                        # d에 포함된 값들에 2를 곱한 후 합한 값
length(d)                       # d에 포함된 값들의 개수
mean(d[1:5])                    # 1~5번째 값들의 평균
max(d)                          # d에 포함된 값들의 최댓값
min(d)                          # d에 포함된 값들의 최솟값
sort(d)                         # 오름차순 정렬
sort(d, decreasing = FALSE)     # 오름차순 정렬
sort(d, decreasing = TRUE)      # 내림차순 정렬
v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

# 패러미터에서는 = 선호
sort(d, decreasing <- TRUE)     # 오름차순 정렬

# 함수 위에서 키 F1
help(sort)

d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]                    # 5보다 큰 값
sum(d>5)                  # 5보다 큰 값의 개수를 출력
sum(d[d>5])               # 5보다 큰 값의 합계를 출력
d==5
condi <- d > 5 & d < 8    # 조건을 변수에 저장
d[condi]                  # 조건에 맞는 값들을 선택

ds <- c(90, 85, 70, 84)
my.info <- list(name='Tom', age=60, status=TRUE, score=ds)
my.info                 # 리스트에 저장된 내용을 모두 출력
my.info[[1]]            # 리스트의 첫 번째 값을 출력
my.info$name            # 리스트에서 값의 이름이 name인 값을 출력
my.info[[4]]            # 리스트의 네 번째 값을 출력

## factror
# Factors in R
# Factors are used to handle categorical variables and store them as levels. 
# They are useful in statistical modeling.

# Example Code
# Creating a factor variable
fruit <- factor(c("apple", "banana", "apple", "cherry", "banana", "cherry", "apple"))

# Displaying the factor
print("Factor Variable:")
print(fruit)

# Checking the levels of the factor
print("Levels:")
print(levels(fruit))

# Modifying levels
levels(fruit) <- c("Apple", "Banana", "Cherry")
print("Modified Levels:")
print(fruit)

# Converting a factor to numeric values
numeric_values <- as.numeric(fruit)
print("Numeric Values:")
print(numeric_values)

# Summary of the factor
print("Summary of Factor:")
print(summary(fruit))

# Adding a new level 'Mango'
fruit <- factor(fruit, levels = c("Apple", "Banana", "Cherry", "Mango"))
print("Levels after adding Mango:")
print(levels(fruit))

# Adding new levels 'Grape'
levels(fruit) <- c(levels(fruit), "Grape")
print("Levels after adding Grape:")
print(levels(fruit))

fruit
as.integer(fruit)

levels(fruit) <- sort(c(levels(fruit)))
fruit[8] <- "Grape"
fruit[9] <- "Mango"
as.integer(fruit)

##########################################

bt <- c('A', 'B', 'B', 'O', 'AB', 'A')  # 문자형 벡터 bt 정의
bt.new <- factor(bt)                    # 팩터 bt.new 정의
bt                                      # 벡터 bt의 내용 출력
bt.new                                  # 팩터 bt.new의 내용 출력
bt[5]                                   # 벡터 bt의 5번째 값 출력
bt.new[5]  

# 팩터 bt.new의 5번째 값 출력
levels(bt.new)                          # 팩터에 저장된 값의 종류를 출력
as.integer(bt.new)                      # 팩터의 문자값을 숫자로 바꾸어 출력
bt.new[7] <- 'B'                        # 팩터 bt.new의 7번째에 'B' 저장
bt.new[8] <- 'C'                        # 팩터 bt.new의 8번째에 'C' 저장
bt.new                                  # 팩터 bt.new의 내용 출력

# 성적 데이터를 순서 있는 팩터로 만들기
grades <- factor(c("B", "C", "A", "B", "A"), levels = c("A", "B", "C"), ordered = TRUE)

# 팩터 확인
print(grades)

str(a <- matrix(1:20,nrow = 10, ncol = 2, byrow=True))
a
True == TRUE
true == TRUE
true <- FALSE
true == FALSE
remove(true)
remove(True)
T == TRUE


# 행과 열 이름을 지정한 행렬 생성
mat_named <- matrix(1:4, nrow = 2, dimnames = list(c("Row1", "Row2"), c("Col1", "Col2")))
print(mat_named)
# 행과 열 이름을 지정한 행렬 생성
mat_named2 <- matrix(1:4, nrow = 2, dimnames = list(c("Row1", "Row2"), c("Col1", "Col2")))
print(mat_named2)

a <- c(c("val1",'val2'),c('val3','val4'))
a


ls()
str(remove)
rm(list = ls())       


score <- matrix(c(90,85,69,78, 
                  85,96,49,95, 
                  90,80,70,60), 
                nrow=4, ncol=3)
score
str(matrix)
z <- matrix(1:100, nrow = 10, ncol = 10, byrow=T)
z
str(c, matrix)
str(c)
str(matrix, remove)
str(maxtrix)
z
z[5,5]
z[5,1]
str(rep)
k <- matrix(rep(c(0,1),times=20), nrow=5, ncol = 9, byrow=T)
k
ir <- data.frame(iris)
ir  

str(iris$Sepal.Length)
iris[1,1]
levels(iris$Species)


str(head)
head(iris)
table(iris[,5])
t(iris)

a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b
2*a
b-5
a+b
b-a
b/a
a*b

a <- a*3
b <- b-5
a
b
is.matrix(iris)
is.data.frame(iris)
if(is.matrix(iris)|is.data.frame(iris)){
  print("2차원")
} else if(is.complex(iris) | is.array(iris)) {
  print("1차원")
}

is.array(iris[1])
is.complex(iris[1])
iris[1]
is.data.frame(iris[1])
is.array(iris[[1]])
iris[[1]]
is.complex(iris[[1]])
iris[[1]]
typeof(iris[[1]])
is.double(iris[[1]])
typeof(iris[1])
iris8 <- iris[1]
iris8
state.x77
sum(state.x77[,1])
class==typeof
class(iris)
typeof(iris)
class(iris[1])
class(iris[[1]])
is.numeric(iris[[1]])
