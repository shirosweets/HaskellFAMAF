--Tema 2--
{-
1) Programar una función recursiva (utilizando pattern matching)
algunaVocal:: [Char] -> Bool, que dado una lista de caracteres (String), devuelve True si alguno de los elementos de la lista es una vocal. 
2) Realizar el ejercicio anterior utilizando la función filter. 
3) Definir una función
pairSwap::(a,b)->(b,a), que invierte las coordenadas de un par.
-}

--1--
algunaVocal :: [Char] -> Bool -- Verifica si es vocal v.1
algunaVocal [] = False
algunaVocal (x:xs) | (x=='a' || x=='e' || x=='i' || x=='u' || x=='o') = True
                   | otherwise = algunaVocal xs

--2--
algunaVocal' :: [Char] -> Bool -- Verifica si es vocal v.2
algunaVocal' xs = aux1 (filter (esVocal) xs)

aux1 :: [Char] -> Bool -- Tiene que devolver Bool de la lista de vocales
aux1 xs | xs==[] = False  -- de la lista que "filtró" filter, por lo tanto 
        | otherwise = True  -- independientemente no sirve

esVocal :: Char -> Bool -- Predicado necesario para filter
esVocal x | (x=='a' || x=='e' || x=='i' || x=='u' || x=='o') = True
          | otherwise = False

-- Intento 1--
--algunaVocal' (xs) = t (filter (esVocal) (xs))
--                  where t [] = False
--                        t f | (f=='a' || f=='e' || f=='i' || f=='u' || f=='o') = True
--                            | otherwise = False

--3--
pairSwap :: (a,b)->(b,a)  -- Invierte los "ordenes o lugares" de un par
pairSwap (x,y) = (y, x)



--pairSwap (,y) = (y, )   No existe esto en pares
--pairSwap (x, ) = (, x)  No existe esto en pares!

