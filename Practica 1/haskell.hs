--Baltazar Coyotl Miguel Angel
--Práctica número 1
--Funciones puras, de primer orden y de orden superior.
--Todas las opciones
--14 de octubre del 2021
--Grupo 3CM2
--Materia: Paradigmas de Programación 

selem :: [a] -> a
selem (x:xs) = (x:xs) !! 1

telem :: [b] -> b
telem (x:xs) = (x:xs) !! 2

repetir :: (Integer -> Integer) -> Integer -> Integer -> Integer
repetir f 0 x = x 
repetir f y x = f (repetir f (y-1) x )

pot :: Integer -> Integer -> Integer
pot x y = repetir (*x) (y-1) x

main =
    do
        putStr "Second element"
        putStr "\n"
        print(selem [1,2,3,4,5,6,7,8])
        putStr "Third element"
        putStr "\n"
        print(telem [9,8,7,6,5,4,3])
        putStr "\n"
        putStr "9 a la 5 potencia es: "
        print(pot 9 5)


