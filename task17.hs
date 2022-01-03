data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
    fmap f (Point3D x y z) = Point3D (f x) (f y) (f z)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor GeomPrimitive where
    fmap f (LineSegment a b) = LineSegment (fmap f a) (fmap f b)
    fmap f (Point a) = Point (fmap f a)

main = print(fmap (+1) $ LineSegment (Point3D 1 2 1) (Point3D 1 0 1))