################################################################################
## Introduccion a R                                                           ## 
## Creado por: Bjorn Reu (breu@uis.edu.co )                                   ##
## Modificado por: Daniel Pabon (dpabonw@gmail.com)                           ##
################################################################################

################################################################################
##        La linea de comandos (Terminal)                                     ##
################################################################################

## Linea de comandos como calculadora:
## ....

2+5
x<-3
x=3
x<-2+5
## Se pueden ejecutar varias operaciones utilizando punto y coma (;):
2+5; 4+6

## Dispone de diferentes funciones como raiz cuadrada o logaritmo
?Arithmetic
sqrt (9)
log (1)
log10(10)
3^2

## Las letras y variables mas importantes estan disponibles en R
?Constants
pi
letters
LETTERS

## Acceso directo entre el guion y la linea de comandos
## Accesos directos
## Command + Enter (Mac)
## Control + Enter (Windows)

################################################################################
##        Funcion Ayuda                                                       ##
################################################################################
## Existen tres forma de obtener ayuda:
## 1. "area Miscelanea" -> Help
## 2. Simbolo "?" antes de la funcion
## 3 Tecla Tabulador (Auto-completa el nombre)
x<-c(1,2,3,4,5,6,7,8)
mean(x)
?sum
?rep
?sort
?order

## Estructura funcion
## Funcion: "mean()"
## Objeto: "x"
## Argumento ('arg'): "na.rm=FALSE"
## Ejercicio:
## Explique brevemente la funcion "order". Que hace y que significan los argumentos?
##
##
##
################################################################################
##                         Vamos a comenzar                                   ##
################################################################################

## Creando nuevas variables:
## Para crear una nueva variable usted puede utilizar "<-" (Simbolo de asignacion) o "=". 
## Cada variable necesita un nombre que puede estar compuesto de letras, numeros o "." o "_".
## Las variables nunca pueden comenzar con un numero. Asi mismo R diferencia entre
## minusculas y mayusculas; "a" es diferente de "A". Las variables pueden ser reescritas.
## Una vez escrita una variable podemos llamar al objeto

x<-3
x

x<-9
x

resultado<-3+9
resultado
mode(resultado)

## Ademas de las variables ('numeric'), R permite la definicion de texto ('character')
## y de variables logicas ('logic', e.g. TRUE and FALSE). Los caracteres necesitan ser 
## puestos entre comillas ("...").
## Estos tipos de vectores se definen como vectores atomicos.

y <- "test"
y
mode(y)

a <- FALSE
a
mode(a)

################################################################################
## El area de trabajo o memoria
## Todos los objetos creados durante una sesion  son guardados en el area de trabajo.
## Para ver el area de trabajo ejecute ls(), para remover algun objeto de esta ejecute rm().
## Tambien se puede utilizar las botones en el area de trabajo

ls()
rm(a)
ls()
################################################################################

## Usted puede hacer calculos simples con variables numericas
a <- 5
b <- 7
a+b+3

## Que ocurre continuacion? ??Por favor explique!
b = 2
b == 2
b == 3

c=7
d=-3
?Syntax
## Ejercicio: Compruebe las siguientes afirmaciones logicas
## c mayor que d
## c menor o igual que d
## c igual a d
c>d
c<=d
c==d
################################################################################
## R como calculadora - Operadores y funciones
?Syntax

# <-               Asignar
# + - * / % ^      Aritm??ticas
# > >= < <= == !=  Relacion (orden y comparaci??n)
# ! & && | ||      logicas
# $                lista indexada
# :                Crear una secuencia


# Operadores L??gicos
# !     Logico NO
# &     Logico Y
# |     Logico O
# <     Menor que
# <=    Menor o igual que
# >     Mayor que
# >=    Mayor o igual que
# ==    Logico IGUAL
# !=    NO IGUAL
# &&    AND with IF
# ||    OR with IF
################################################################################

## Tipos de Datos y Objetos

## Logical = (FALSO/VERDADERO)
## Number = (Entero, Decimal, Complejo (e.g. 3i))
## Character = Letras y palabras ("", or '')

## Otros tipos de datos son "list", "expression", "name", "symbol" and "function"

## Para operaciones mas complejas necesitamos estructuras de datos mas complejas.
## R ofrece mas que solo objetos que contiene un elemento, como los vectores o las matrices.

################################################################################
## Vectores I: Vectores sencillos                                             ##
################################################################################
## Para hacer un vector utilice la funcion concatenar "c()" . Los elementos
## sencillos de un vector estan separados por ",".
x <- c (2, 5, 10, 14, 3, 1, 18, 24, 17)
x
mode(x)

a <- c ("text", 2, 6, TRUE)
a <- c ( 2, 6, F)
a
mode(a) ## Que ocurre aqui? Por que 'character'?

## Ejercicio: 
## Cree un vector con nombre "vec" que contenga los numeros de 1 a 10.

## Cree un vector que contenga los seis primeras letras del abecedario.



## Un vector tambien puede contener diferentes tipos de variables.
## Usted puede realizar calculos con vectores que contengan solo elementos 'numeric'
## suma
x
sum(x)
## promedio
mean(x)
## cuartil
quantile(x)
## la longitud
length (x)
length(letters)

## ordenar
x
sort(x, decreasing = FALSE)
## Que ocurre si colocamos "decreasing=TRUE"? Compruebe con "?sort"
## sort y order realizan la misma funcion; sin embargo order puede ser aplicado a data frames

## Calculo con vectores: Por favor explique que ocurre continuacion
x
x+10
length(x)
y <- c (1, 3)
x+y
x

y <- c (4, 2, 8, 5, 3, 9, 3, 10, 1)
xy<-x+y
xy


sum(x)
sum(x,y)
sum(x+y)

## Etiquetar elementos de un vector con nombres. Funcion "names()"
x <- c (2, 5, 10, 14, 3, 1, 18, 24, 17)
a <- c ("E1","E2","E3","E4","E5","E6","E7","E8","E9")
names (x) <- a
x
names(x)
str (x)
summary (x)
head (x, n=9)
tail (x)

################################################################################
## Ejercicios: Asignacion  y operadores logicos

# 1. sumar los numeros enteros de 1 hasta 5


# 2. crear un variable v1 que tiene una letra

# 3. copiar v1 a v2


# 4. compare los valores de v1 y v2


## Cree un vector de longitud 20 con el tipo de datos que usted quiera y muestre las primeras nueve entradas.


################################################################################
## Vectores II: Vectores mas complejos                                        ##
################################################################################
## Secuencias
z<-3:10
z

seq (from=1, to=6, by=0.2)
seq (from=1, to=6, length.out=20)  # Cual es la diferencia respecto al anterior?
seq(from=530, to=620, by=30)


z<-c (1, 3, 9)
z
rep (z, times=10)           # Que ocurre aqui?
rep (z, each=10)  			    # Cual es la diferencia con la linea anterior?

## Indexar
## Para extraer uno o varios elementos de un vector utilice "[]"
x
x[4]
x[3:5]
id<-c(1, 9, 2)
x[id]
x[c (1, 9, 2)]
x[-c (1, 9, 2)]

## Ejercicio:

# Cree un vector con los numeros de 1 a 100

# Extraiga del vector el elemento numero 87

# Extraiga todos los elementos sin 87

# Verifique la longitud del vector

# PLUS: Extraiga cada segundo elemento del vector


## Crear un vector vacio de longitud 10 y asigne a su terecero elemento el valor que
## tiene la suma de x

## Ejercicio
# Cree un vector vacio de cuatro elementos
# En el vector vacio indexe para cada posicion la primera inicial de sus nombres y apellidos. (Si tiene un solo nombre indexe NA)


################################################################################
##                          NA                                                ##
################################################################################
?NA
e<- c(122, 324, 34, NA, 234)
mean(e)
?mean
mean(e, na.rm=T)

is.na(e)        #Que ocurre aqui?
which(is.na(e)) #Que ocurre aqui?

################################################################################
## Matrices                                                                   ##
################################################################################
# La matriz posee siempre dos dimensiones

mat <- matrix(data = 1:12, nrow = 3, ncol = 4)

mat
mat[2,2]
mat[1:3,1:3]
mat[,1]
mat[1,]

# transponer la matriz
mat2 <- t(mat)
mat2

## Ejercicio:
# Realice una matriz con 11 columnas y 11 filas.
# incluya en la matriz el numero 8 en cada esquina y en la mitad de la matriz


# cbind y rbind
c5<-c(5,5,5)
cbind(mat, c5)

r4<-c(4,4,4,4)
rbind(mat,r4)

# rownames y colnames
rownames(mat)<-c("a", "b", "c")
mat

colnames(mat)<-c("E1", "E2","E3","E4")
mat

####################################################################
##                  Data frame                                    ##
####################################################################
mat
str(mat)
df<-as.data.frame(mat)
df
str(df)

re<-c("a", "b", "c")
df2<-data.frame(df, re)
str(df2)


mat3<-as.matrix(df2)
mat3  # Explique por que toda la matriz esta compuesta por caracteres?
str(mat3)

## Felicitaciones, ahora sabes los conceptos basicos a crear y tratar de manipular datos.


##################################################################
##   EJERCICIOS FINALES                                        ###
##################################################################

## 1. Genere muy eficientemente estos 3 vectores

## 1 2 3 4 5 6 7 8 9 10 10 9 8 7 6 5 4 3 2 1

## 0.00 0.15 0.30 0.45 0.60 0.75 0.90 1.05 1.20 1.35 1.50
 
## A A A 1 1 1 B B B X X X 2 2 2 C C C 3 3 3

## Extraiga de cada vector el tercer elemento y pongalo en la primera, secunda y
## tercera posicion de un nuevo vector vacio. Cual es el modo del nuevo vector y
## por que?

## Cree un nuevo objeto que contenga los mismo elemento del vector anterior.

