# code 2-1

2+3
(3+6)*8
2^3
5 %% 3
5 %/% 3

# code 2-2
2**3
2^3
# code 2-3
log(10)+4
log(3)
log(4)
sqrt(25)
max(5,3,1,12,5,456,2)
min(5,1,234,5,1,0)
factorial(10)
1*2*3*4*5

# code 2-4
a <- 10
b <- 10
c <- a+b
print(c)
'pythonnnnn'
"Java"
"Alpha"
"Beta"

NULL
TRUE
1 == TRUE
0 == TRUE
True = TRUE
FALSE = TRUE
FALSE == TRUE
TRUE > FALSE
Inf-10
NaN
while(TRUE){
  print(1)
  print(2)
  break
}

#code 2-7

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(TRUE,TRUE,FALSE,TRUE)
x
y
z
w <- c(1,2,3, "a","b","c")
w
w2 <- c(1,2,3,4,5,6,7,8,9, "a","b","c")
w2[10]
1:(100/2)*2
v2 <- c(1,2,5,50:90)
v2

100:1

v3 <- seq(0,1,0.1)
v4 <- seq(0,100,3)
안녕 <- 3
안녕

rep(c("A", "B"), times = 3, each = 2, length.out=5)

v5 <- rep(1,times=5) # 1을 5번 반복
v5 
v6 <- rep(1:5,times=3) # 1에서 5까지 3번 반복
v6 
v7 <- rep(c(1,5,9), times=3) # 1, 5, 9를 3번 반복
v7
v8 <- rep(c(1,5,9),each=3)
v8
v9 <- rep(seq(1,10),each=2)
v9

score <- c(100,90,30)
score
names(score)
names(score) <- c('me','you','friend')
names(score)
score
score['me']
v6[-rep(1,5,9)]
# 이름을 지정한 벡터
vec <- c(a = 10, b = 20, c = 30)

# 이름으로 요소 참조
vec["b"]
vec[c("a","c")]
vec[0] #named numeric
vec[4] #NA

v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3 # v1의 2번째 값을 3으로 변경
v1
v1[c(1,5)] <- c(10,20) # v1의 1, 5번째 값을 각각 10, 20으로 변경
v1


d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d,decreasing = FALSE)
sort(decreasing = TRUE, x=d)
v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

sort(d,decreasing <- TRUE)

help(sort)
d <- c(1,2,3,4,5,6,7,8,9) 
d>=5 
d[d>5] 
sum(d>5)
sum(d[d>5]) 
d==5 
condi <- d > 5 & d < 8 
condi
d[condi]

ds <- c(90, 85, 70, 84) 
my.info <- list(name='Tom', age=60, status=TRUE, score=ds) 
my.info # 리스트에 저장된 내용을 모두 출력
my.info[[1]] # 리스트의 첫 번째 값을 출력
my.info$name # 리스트에서 값의 이름이 name인 값을 출력
my.info[[4]] # 리스트의 네 번째 값을 출력

# my.info['Tom']

str(my.info[1][1])
str(help)
my.info[1][[1]]
a <- list(1,'a',TRUE)
a
a[1]
a[[1]]
str(a)

# 팩터 생성
gender <- factor(c("male", "female", "male", "female"))
print(gender)
str(gender)

bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
bt.new[7] <- 'B'
bt.new[8] <- 'C'
levels(bt.new) <- c("A","AB","B","O","RH-")
bt.new[8] <- 'RH-'
bt.new
