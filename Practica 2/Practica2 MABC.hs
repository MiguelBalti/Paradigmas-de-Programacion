--Baltazar Coyotl Miguel Angel
--Práctica número 2
--Funciones recursivas
--Opcion 1 y 3
--28 de octubre del 2021
--Grupo 3CM2
--Materia: Paradigmas de Programación 

-- Primer ejercicio
seriegeo :: Int -> Int -> Int
seriegeo a 0 = 1
seriegeo a n = (a ^ n) + seriegeo a (n-1)

-- Tercer ejercicio
insertL :: Eq c => c -> c -> [c] -> [c]
insertL _ _ [] = []
insertL new old (y:ys) = 
    if y == old then new:y:ys 
    else y: insertL new old ys
main =
    do
        putStrLn "enter value for a: "
        input1 <- getLine
        putStrLn "enter value for n: " 
        input2 <- getLine 
        let a = (read input1 :: Int)
        let n = (read input2 :: Int)
        putStrLn "The answer is: "
        print (seriegeo a n)
        putStr "\n"
        putStrLn "Third exercise "
        putStrLn "insertL 100 6 [ 1, 2, 3, 4, 5, 6, 7] "
        print(insertL 100 6 [ 1, 2, 3, 4, 5, 6, 7])


        