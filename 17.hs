module Demo where
import Prelude hiding (Functor, fmap)
class Functor f where
    fmap::(a->b)->f a->f b

data Point3D a = Point3D a a a deriving Show

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a)

instare Functor Point3D where
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)

-- GHCI> fmap (+ 1) $ Point (Point3D 0 0 0)
Point (Point 1 1 1)
-- GHCI> fmap (+ 1) $ LineSegment (Point3D 0 0 0) (Point3D 1 1 1)
LineSegment (Point3D 1 1 1) (Point3D 2 2 2)