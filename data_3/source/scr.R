# Elaborado por: Eduard Martinez
# Colaboradores:
# Fecha de elaboracion: 25/08/2021
# Ultima modificacion: 25/08/2021

# configuracion inicial (comentario prueba max)
rm(list = ls()) # limpia el entorno de R
if(!require(pacman)) install.packages(pacman) #cargar paquete, solo hoy, se borra luego 
if(!require(pacman)) install.packages(pacman)
require(pacman)
p_load(dplyr,data.table) #Instala todos los paquetes (si no los tengo) y los llama 
print('No fijamos un WD porque estamos trabajando en un R-project')
#============================#
# Encabezado de todos los scr#
#============================#
rm(list = ls())
require(pacman)
p_load(dplyr,data.table)

#============================#
# [1.] Directorio de trabajo #
#============================#

getwd() # obtener la ruta del directorio de trabajo actual

list.files() # obtener vector nombres de archivos en el wd

list.files(path = '.' , pattern = '.md') # vector nombres archivos markdown (.md)

dir.create("nombre") #crear carpeta
#====================#
# [2.] Tipo de datos #    #LOS VECTORES DEBEN SER HOMOGÉNEOS 
#====================#

# lógico
vector_l = c(NA,TRUE,FALSE)
is.logical(vector_l)

# character
vector_c = c("hola",'a',) #para character se usa '' ó ""
is.character(vector_c)

# Datos numericos

# numeric
vector_n = c(5,2)
is.numeric(vector_n) #is para saber qué tipo de elementos tiene 

# interger
vector_i = -5:5
is.integer(vector_i)

# double
vector_d = c(1e6,2e6)
is.double(vector_d)

cat("puedo consultar el tipo de datos que contiene un objeto usando la función is()")

#==========================#
# [3.] Estructura de datos #
#==========================#
#Todos de un mismo tipo #Diferentes tipos
#--------------------------------------
# Dim |  Homogeneos	 |  Heterogeneos  |
#--------------------------------------
#  1d	|    Vector    |   Listas       |  =c() para crear vectores     =list() crear listas
#  2d	|    Matriz    |   Dataframe    |  =matrix() crear matrices     =data.frame() crear dataframe
#  nd	|    Array     |                |
#--------------------------------------

# Homogéneos: todos los elementos de este objeto deben ser del mismo tipo (númerico o carácter o lógico).

# Heterogéneos: este tipo de objetos permiten almacenar diferentes tipos de datos (númerico, carácter y lógico).

# Dimensiones: hace referencia al numero de dimensiones (filas y/o columnas) de un objeto.


## Vector & Matriz

# Vectores
abe = c("a","b","c","d","e","f")
log = c(TRUE,FALSE,TRUE,TRUE,FALSE,FALSE)
num = c(2,4,6,7,8,9) # los numeros no tiene que ser continuos
files = list.files()

# Matriz
matriz = matrix(num, ncol = 3,  nrow = 2 )
df = data.frame(matriz)
matriz

## Listas 

#lista              
lista = list() #lista vacía
lista[[1]] = abe  
lista[[2]] = log
lista[[3]] = num
lista[[4]] = matriz # matriz que creamos anteriormente
lista[[5]] = df # dataframe que creamos anteriormente
lista

## Dataframes

# dataframe
dataframe = data.frame(log, abe, num, matriz)

dataframe 
str(dataframe) #para saber el tipo de datos 

## Manipular vectores
abe[5] #pidiendo la posición 5
abe

abe[-5] # Eliminar elemento 5

abe[1:3] # Pedir los 3 primeros elementos


## Manipular matrices

matriz[1,] # todos los elementos en fila 1


matriz[,2] # todos los elementos en columna 2


matriz[1,2] # elemento en fila 1 y columna 2

# Remplazar elementos en una fila
matriz[1,] = c(3,7,9)
matriz

# remplazar un elemento
matriz[1,2] = 5
matriz

# nombre de columnas
colnames(matriz)  

# nombre de fillas
rownames(matriz) 

# Asignar nombre a varias columnas
colnames(matriz) = c("col_1" , "col_2", "col_3") #se nombra con un vector 
matriz

# Asignar nombre a una fila en especifico
rownames(matriz)[2] = "row_2" 
matriz

rownames(matriz) = c("row_1","new_row_2")
matriz

## Manipular dataframes

dataframe[1,]# observar una fila
dataframe
dataframe[,3]# observar una columna

dataframe$num #posición del nombre de la variable

# cambiar los nombre de la filla
rownames(dataframe) = c("row_1","row_2","row_3","row_4","row_5","row_6") 

rownames(dataframe)# observar los nombres de las fillas
dataframe

## Manipular listas

lista

lista[[4]] # LLamamos el dato que deseamos DOS CORCHETES (DIFERENCIA DE LOS VECTORES)

lista[[4]][,2] # seleccionar columna dentro de la matriz

names(lista) = c("vector_character","vector_logical","vector_numerico","matriz","df")
lista

lista$vector_character #Llamar con nombres
lista["df"] #Llamar con nombres






