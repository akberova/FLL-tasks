module Task16
    ( 
        fmap,
        Functor,
        Point3D
    ) where

data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
    fmap func (Point3D a b c) = Point3D (func a) (func b) (func c)