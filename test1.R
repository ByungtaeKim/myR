print("Hello R!")

print("this is a test for github")

#vector

vec1<-c(2,3,5,7)
vec1
vec2<-c('cat','dog','fox','pig','cow')
vec2
vec3<-c(TRUE,FALSE,TRUE)
vec3
vec4<-c(4:-2)
vec4
vec2[3]
vec2[c(1,3,5)]
vec2[3:5]
vec1+10
vec1+vec4
vec5<-c(1:8)
vec1+vec5
vec1
vec5
vec1
fruit<-c('Apple','banana','cheery')
food<-c('pie','sandwich','jam')
paste(fruit,food)
#paste는 빈칸을 두고 concatenate 한다.

paste0(fruit,food)
vec0<-c(10,20,30,40,50,60)
result<-ifelse(vec0>=40,'pass','fail')
results
str(results)
str(result)
class(result)
mode(result)


#factor

review<-c('negative','neutral','positive')
review
review.factor<-factor(review)
review.factor
str(review)
str(review.factor)
factor1<-c('negative','positive','neutral','positive','negative')
factor1.after<-factor(factor1)
factor1.after
str(factor1.after)
as.numeric(factor1.after)
levels(review1.after)
levels(factor1.after)
levels(factor1.after)<-c(10,20,30)
factor1.after
is.numeric(factor1.after)
is.factor(factor1.after)

eval<-c('medium','low','low','high','medium')
eval.factor<-factor(eval, levels=c("low",'medium','high'), ordered = TRUE)

eval.factor
str(eval.factor)
table(eval.factor)
table(factor1.after)
gender<-c(2,2,1,0,1,1,2)
gender.factor<-factor(gender, levels=c(2,1), labels = c('male','female'))
gender.factor
table(gender.factor)

#matrix

vector<-c(1:12)
matrix1<-matrix(vector,nrows=4,ncols=3)
matrix1<-matrix(vector, nrow=4, ncol=3)
matrix1
matrix2<-matrix(vector,nrow=4,ncol=3,byrow=TRUE)
matrix2
matrix2[2,]
matrix2[3,3]
matrix[3][3]
#This makes error

#data.frame
a<-"list example"
b<-c(1:3)
c<-c('one','two','three')
d<-matrix(1:12, nrow=3)
e<-data.frame(num=b,word=c)
f<-list(num=b,word=c)
g<-mean
h<-lm(mpg ~ wt, data=mtcars)
lst<-list(title=a,number=b,c,d,e,f,g,h)
lst
#long format and wide format
#wide format ->long format = tidyr gather() function
#long format -> wide format = tidyr spread() function

head(airquality)
library(tidyr)
aq.long<-gather(airquality,key=Factor, value=measurement, Ozone:Temp)
head(n=10, aq.long)
length(aq.long)
length(airquality)
aq.wide<-spread(data=aq.long, key=Factor, value=measurement)
head(aq.wide)

#separate -> from one column to multiple columns

head(iris)
iris.long<-gather(data=iris,key=Element, value=Measurement, -Species)
head(iris.long)
iris.sep<-separate(iris.long, col=Element, into=c('Part','Measures'), sep='*L*')
iris.sep<-separate(iris.long, col=Element, into=c('Part','Measures'), 
                   sep='L')
head(iris.sep)
iris.unite<-unite(iris.sep, col=Factor, Part, Measures, sep='L')
head(iris.unite)
