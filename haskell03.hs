--1. adiciona 10 a todos os elementos da lista
add10toall :: [Int] -> [Int]
add10toall list = [x + 10 | x <- list]

--2. multiplica lista por n
multN :: Int -> [Int] -> [Int]
multN n list = [x * n | x <- list]

--3. multiplica por N
multN' :: Int -> [Int] -> [Int]
multN' n list = map (\x -> x*n) list

--4. função
applyExpr :: [Int] -> [Int]
applyExpr list = [3*x+2 | x <- list]

--5. função com map
applyExpr' :: [Int] -> [Int]
applyExpr' list = map (\x -> 3*x+2) list

--6. adicionar sufixo
addSuffix :: String -> [String] -> [String]
addSuffix string list = [x++string | x <- list]

--7.seleciona somente maiores
selectgt5 :: [Int] -> [Int]
selectgt5 list = [x | x <- list, x>5]

--8.soma impares
sumOdds :: [Int] -> Int
sumOdds list = sum [x | x <- list, x `mod` 2 == 1]

--9. soma impares
sumOdds' :: [Int] -> Int
sumOdds' list = sum (filter (\x -> x `mod` 2==1) list)

--10. selectExpr :: [Int] -> [Int]
selectExpr :: [Int] -> [Int]
selectExpr list = [x | x <- list, x >= 20 && x<=50]

--11. menores que 5 retorna tamanho
countShorts :: [String] -> Int
countShorts list = length ([x | x <- list, length x < 5])

--12. função maiores que 10
calcExpr :: [Float] -> [Float]
calcExpr list = [x^2/2 | x <- list, x>10]

--13.converte ' ' em '-'
trSpaces :: String -> String
trSpaces str = [if x==' ' then '-' else x | x <- str]

--14. seleciona segundo elemento de tuplas
selectSnd :: [(Int,Int)] -> [Int]
selectSnd tupla = [snd x | x <- tupla]

--15. produto de duas listas
dotProd :: [Int] -> [Int] -> Int
dotProd list1 list2 = sum [fst x * snd x| x <-zip list1 list2]
