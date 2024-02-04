#!/bin/bash
#github - thecyberminds
#Hola Cibernético ¿calculamos?
while true; do
echo "Hola Cibernético ¿calculamos?"

    echo "Selecciona una operación:"
    echo "1. Sumar"
    echo "2. Restar"
    echo "3. Multiplicar"
    echo "4. Dividir"
    echo "5. Resto"
    echo "6. Salir"

    read -p "Ingresa el número de la operación deseada: " opcion
#Ponemos todos las opciones aritmeticas
#Si no funciona la calcu teneis que instalar en la maquina linux este comando: sudo apt-get install bc
#importante estar en root para la istalación-sudo su-. Bc es para la ejecución de las operaciones
#aparte tener activado la ejecución x. ¿como activarlo?
#activar chmod 777 para rwx completo o simplemente chmod +x  
    case $opcion in
      #Hola Cibernético ¿calculamos?
      #Sumar
  1)
            read -p "Ingresa el primer número: " num1
            read -p "Ingresa el segundo número: " num2
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado: $resultado"
            ;;
    #Restar
        2)
            read -p "Ingresa el primer número: " num1
            read -p "Ingresa el segundo número: " num2
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado: $resultado"
            ;;
    #Multiplicar
        3)
            read -p "Ingresa el primer número: " num1
            read -p "Ingresa el segundo número: " num2
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado: $resultado"
            ;;
    #Dividir
        4)
            read -p "Ingresa el numerador: " num1
            read -p "Ingresa el denominador: " num2
            if [ $num2 -ne 0 ]; then
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado: $resultado"
            else
                echo " Ups hay un Error: No se puede dividir por cero."
            fi
            ;;
    #Resto
        5)
            read -p "Ingresa el numerador: " num1
            read -p "Ingresa el denominador: " num2
            if [ $num2 -ne 0 ]; then
                resultado=$(echo "$num1 % $num2" | bc)
                echo "Resultado: $resultado"
            else
                echo "Ups Ups Ups  hay un Error: No se puede calcular el resto al dividir por cero."
            fi
            ;;
    #exit-despedida
        6)
            echo "¡Hasta luego cibernético! Saluditos"
            exit 0
            ;;
        *)
            echo "Uy Uy Uy tu Opción no es válida que drama... Por favor, selecciona una opción válida."
            ;;
    esac
done
