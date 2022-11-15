{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveFoldable #-}
module App where

import Data.List.NonEmpty

program :: IO ()
program = putStrLn "hello!"

-- Bool = {True, False} 
-- OptionBool = {Some True, Some False, Missing } 
data Option a  = Missing | Some a 


data Tree a = Node a [Tree a] deriving (Eq, Show, Functor, Foldable)

data Tree2 a = Leaf a | Node2 a (NonEmpty a)  deriving (Eq,Show)

  

-- parametric polymorphic  / forall / generics 
-- ad hoc polymorphism 


-- g = fmap . fmap 
g f = (fmap . fmap) f


from :: Tree a -> Tree2 a 
from = undefined

to :: Tree2 a -> Tree a 
to = undefined 

pretty :: Show a => Tree a -> String 
pretty = undefined 

pretty2 :: Show a => Tree2 a -> String 
--pretty2 t2 = pretty (to t2)
pretty2 = pretty . to 

isLeaf :: Tree a -> Bool
isLeaf (Node _ []) = True
isLeaf _ = False 

