#! /bin/bash
# cars
# author: Jonathan Burns

command=""

while [ "$command" != 3 ]
do
    echo "Enter a number for the following:"
    echo "1. enter a new car"
    echo "2. display the list of cars"
    echo "3. quit and exit the program"
    echo "number:"

    read -r command

    case "$command" in

        1)
            echo "Input year:"
            read -r year
            echo "Input make:"
            read -r make
            echo "Input model:"
            read -r model

            echo -e "${year}:${make}:${model}" >> My_old_cars
            echo "Car added to My_old_cars file"
        ;;

        2)
            echo "Here are your cars:"
            sort My_old_cars
        ;;

        3)
            echo "Exiting..."
        ;;

        *)
            echo
            echo "Error: only enter a number in range 1-3"
        ;;

    esac

    echo "______________________"
done