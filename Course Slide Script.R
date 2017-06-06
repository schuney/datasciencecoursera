## Expressions from Coursera R Introductory course slides

## Assignment operator is <
## Name an object, assign a value to it
x <- 1
y <- 5
msg <- "hello"

## Explicit Printing
print(x)
print(y)
print(msg)

## Indirect printing
x
y
msg

## Can assign a range of values to an object with colon
x <- 1:20
x
x <- 1:100
x

## Will see bracketed numbers at the start of each line when an obejct is printed as reference points for which
## value you are seeing
## E.g.,
## [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29
## [30]  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58
## [59]  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87
## [88]  88  89  90  91  92  93  94  95  96  97  98  99 100

## Creating vectors
## Concatenate function c() will combine more than one item together in a vector assigned to the object you name
## Objects have to have values with the same class, R will figure out what class to assign
x <- c(0.5, 0.6)

## Can also use the vector() function to create an empty vector, and specify its class and length
x <- vector("numeric", length=10)
x
## [1] 0 0 0 0 0 0 0 0 0 0

## If you do have different classes in a concatentate function, R will find the lowest common denominator that 
## can accommodate those classes, i.e., "coersion"

y <- c(1.7, "a")
## [1] "1.7" "a"  
y <- c(TRUE, 2)
## [1] 1 2
y <- c("a", TRUE)
## [1] "a"    "TRUE"

## You can display a vector as different classes with as. functions
x <- 0:6
class(x)
## [1] "integer"
as.numeric(x)
as.logical(x)
as.character(x)

## If the display as a different class is impossible, will get NA results and warning message
x <- c("a","b","c")
as.numeric(x)
## [1] NA NA NA
## Warning message:
##  NAs introduced by coercion 

## Lists are a special type of object that CAN accommodate different classes - I think by creating separate vectors 
## within the list? - which will display with double brackets
x <- list(1, "a", TRUE, 1 + 4i)
class(x)

## Matrices are vectors with dimensions (i.e., rows and columns)
## First method to create is with matrix() function, specifying rows and cols
m <- matrix(nrow=2, ncol=3)

## dim() reports back dimensions, attributes() would tell us all attributes of the object, in this case dim is all
## that's specified
dim(m)
attributes(m)

## With matrix function, you can specify the values from the get-go
m <- matrix(1:6, nrow=2, ncol=3)
m
##[,1] [,2] [,3]
##[1,]    1    3    5
##[2,]    2    4    6

## You can also back into the matrix by creating a vector first and then giving it dimensions
## Matrix will populate values by columns
m <- 1:10
m
dim(m) <- c(2,5)
m
##[,1] [,2] [,3] [,4] [,5]
##[1,]    1    3    5    7    9
##[2,]    2    4    6    8   10

## Can also you cbind and rbind (column bind and row bind) to combine two separate vectors into a matrix
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)