# 1.>   A <- matrix(1:20, 4,5, byrow = T)
#> A
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    6    7    8    9   10
#[3,]   11   12   13   14   15
#[4,]   16   17   18   19   20
#
#
#2. 
#elem <- matrix(c(4,3,2,3,4,5),3,2) 
#> elem
#     [,1] [,2]
#[1,]    4    3
#[2,]    3    4
#[3,]    2    5

#3.
# >elem <- 0
# A
#   [,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    6    7    8    9    0
#[3,]   11   12   13    0   15
#[4,]   16   17    0   19   20
#
#4.
#> I <- diag(x=1, 5:5)
#> I
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    0    0    0    0
#[2,]    0    1    0    0    0
#[3,]    0    0    1    0    0
#[4,]    0    0    0    1    0
#[5,]    0    0    0    0    1
#
#5.
# B <- rbind(A, c(1,1,1,1,1))
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    6    7    8    9    0
#[3,]   11   12   13    0   15
#[4,]   16   17    0   19   20
#[5,]    1    1    1    1    1
#
#6.
#> inversaB <- solve(B)
#> inversaB
#[,1] [,2]        [,3]          [,4]       [,5]
#[1,] -0.50158730 -0.3 -0.14285714 -5.555556e-02  5.7619048
#[2,]  0.27460317  0.4  0.21428571  1.111111e-01 -6.8095238
#[3,]  0.05555556  0.0  0.00000000 -5.555556e-02  0.8333333
#[4,]  0.07142857  0.0 -0.07142857 -9.912706e-18  0.7142857
#[5,]  0.10000000 -0.1  0.00000000 -6.938894e-18  0.5000000

#7.

# >multB <- B%*%inversaB
# >multB
#[,1]          [,2]         [,3]         [,4]          [,5]
#[1,] 1.000000e+00  0.000000e+00 0.000000e+00 8.921435e-18 -1.332268e-15
#[2,] 2.220446e-16  1.000000e+00 1.110223e-16 1.328303e-16 -4.440892e-15
#[3,] 4.440892e-16  0.000000e+00 1.000000e+00 2.289835e-16 -5.329071e-15
#[4,] 2.220446e-16  0.000000e+00 2.220446e-16 1.000000e+00 -8.881784e-15
#[5,] 2.775558e-17 -2.775558e-17 0.000000e+00 3.965082e-18  1.000000e+00

#8. El resultado no es igual a la matriz identidad.
#MultB == I ..... FALSE.

#9.

#Error <- 1/25%*%abs(sum(B%*%inversaB-I))
#> Error
#[1,] 2.111578e+12
#____________________________________________________________________________

#data frames

#1.
# > str(iris)
#'data.frame':	150 obs. of  5 variables:
#$ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

#> dim(iris)
#[1] 150   5

#2.

#> class(iris)
#[1] "data.frame"
#> class(iris$Sepal.Length)
#[1] "numeric"
#> class(iris$Sepal.Width)
#[1] "numeric"
#> class(iris$Petal.Length)
#[1] "numeric"
#> class(iris$Petal.Width)
#[1] "numeric"
#> class(iris$Species)
#[1] "factor"

#3.

#summary(iris)
#Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
#Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
#1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
#Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
#Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
#3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
#Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500                  

#4. como podemos observar coinciden los resultados con el punto anterior.
#> mean(iris$Sepal.Length)
#[1] 5.843333
#> mean(iris$Sepal.Width)
#[1] 3.057333
#> mean(iris$Petal.Length)
#[1] 3.758
#> mean(iris$Petal.Width)
#[1] 1.199333
#> range(iris$Sepal.Length)
#[1] 4.3 7.9
#> range(iris$Sepal.Width)
#[1] 2.0 4.4
#> range(iris$Petal.Length)
#[1] 1.0 6.9
#> range(iris$Petal.Width)
#[1] 0.1 2.5


#5.
# iris[c(1:5),1:2] <- NA
#> iris[c(1:5),1:2]
#Sepal.Length Sepal.Width
#1           NA          NA
#2           NA          NA
#3           NA          NA
#4           NA          NA
#5           NA          NA

#6. Como podemos ver, aplicando la funcion de mean y range, r nos devuelve NA. al contener datos faltantes.
# sin embargo en la funcion summary agrega el numero de NA'S respecto al ejercicio 3.


#> mean(iris$Sepal.Length)
#[1] NA
#> mean(iris$Sepal.Width)
#[1] NA

#> range(iris$Sepal.Length)
#[1] NA NA
#> range(iris$Sepal.Width)
#[1] NA NA

#> summary(iris$Sepal.Length)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#4.300   5.200   5.800   5.877   6.400   7.900       5 
#> summary(iris$Sepal.Width)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#2.00    2.80    3.00    3.05    3.30    4.40       5

#7. Para corregir los problemas anteriores, se debe añadir tanto a la funcion Mean y Range el argumento 
#   na.rm = TRUE. Ya que elimina los valores faltantes.

#> mean(iris$Sepal.Length, na.rm = TRUE)
#[1] 5.877241
#> mean(iris$Sepal.Width, na.rm = TRUE)
#[1] 3.049655
#> range(iris$Sepal.Length, na.rm = TRUE)
#[1] 4.3 7.9
#> range(iris$Sepal.Width, na.rm = TRUE)
#[1] 2.0 4.4

#8. Es mejor codificar los valores faltantes como NA, ya que las funciones en R tienen parametro para eliminar
#   los NA y no otros tipos de letras o numeros como por ejemplo "0".

#9. > borrarNA <- na.omit(iris)

#10. > tapply(iris$Sepal.Length, INDEX = iris$Species,FUN = mean )
#setosa versicolor  virginica 
#NA      5.936      6.588 
