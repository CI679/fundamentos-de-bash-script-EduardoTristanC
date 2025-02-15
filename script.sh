#!/bin/bash
#

n1=10
n2=7
echo "el valor de n1 es $n1" #para acceder al valor de la variable se usa $

#estructuras condicionales
#operadores condicionales
#< (-lt)
#> (-gt)
#<= (-le)
#=> (-ge)
#== (-eq)
#!= (-ne)

if [[ $n1 -gt $n2 ]]; then
    echo "La sentencia es verdaders $n1 $n2"
else
    echo "La sentencia es falsa $n1 $n2"
fi

ls
res=$?

echo "El resultado de la ejecucion es $res"

if [[ $? == 0 ]]; then
    echo "La sentencia se ejecuto correctamente"
else 
    echo "La sentencia falla"
fi

#Operadores para manipular archivos
#-e indica si un archivo o carpeta existe
#-d indica si es una carpeta
#-r -w -x si puede leer, escribir y ejecutar
#-a ai el archivo contiene algo

file="/.file-demo"

if [[ -s $file ]]; then
    echo "El archivo contiene algo"
else
    echo "El archivo esta vacio"
fi

#operadores logicos AND (&&) OR (||)

if [ -r $file ]  && [ -x $file ]; then
    echo "El archivo se puede leer y ejecutar"
else
    echo "El archivo no se puede leer ni ejecutar"
fi


# Estructura de control case
# $ = array donde $# ($1, $2, $3, ... $n) -h hola

case $1 in 
    hola )
        bienvenido
    ;;
    adios )
        echo "adios"
    ;;
    *)
        echo "No entiendo lo que dices"
    ;;
esac

#estructuras iterativas

#While
user="" 
while [[ $user != "admin" ]]; do
    read -p "¿Cual es tu usuario?" user
done

#for
for i in {1..5}; do
    echo "el numero es $i"
done 

for ((i=0; i<5; i++)); do
    echo "*el numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do 
    echo "Hola $invitados"
done

#Funciones
suma(){
    echo "Hola desde la funcion sumar."
}

resta(){
    echo $(( $1 - $2))
}

suma
total=$(resta 9 4)
echo "El total es $total"