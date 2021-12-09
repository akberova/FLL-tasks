module Demo where
import Prelude hiding (Functor, fmap)
class Functor f where
    fmap::(a->b)->f a->f b

data Point3D a = Point3D a a a deriving Show


instare Functor Point3D where
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)

GHCI> fmap (+ 1) (Point3D 5 6 7)
Point3D 6 7 8