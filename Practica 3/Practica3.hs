--Baltazar Coyotl Miguel Angel
--Práctica número 3
--Funciones (Tarea 3)
--Opcion 1 y 3
--3 de noviembre del 2021
--Grupo 3CM2
--Materia: Paradigmas de Programación 

-- Primer ejercicio
rember ::Eq a => a -> [a] -> [a]
rember _ [] = []
rember a (y:ys) = if
                    y == a then ys
                  else
                    y : rember a ys

-- Tercer ejercicio
dotProduct :: Num b => [b] -> [b] -> b
dotProduct x y = foldl1 (+) (zipWith (*) x y)

main =
    do
        putStrLn "Primer ejercicio: "
        putStrLn "3 [1,2,3,4,5,6] " 
        putStrLn "The answer is: "
        print (rember 3 [1,2,3,4,5,6])
        putStr "\n"
        putStrLn "Third exercise "
        putStrLn "[1,2,3,4] [5,6,7,8]"
        putStrLn "The answer is: "
        print (dotProduct [1,2,3,4] [5,6,7,8])
