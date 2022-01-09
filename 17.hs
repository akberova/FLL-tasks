data Point3D a = Point3D a a a deriving Show
data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor Point3D where 
    fmap f (Point3D a b c) = Point3D (f a) (f b) (f c)

instance Functor GeomPrimitive where 
    fmap f (LineSegment (Point3D a1 b1 c1) (Point3D a2 b2 c2)) = LineSegment (fmap f (Point3D a1 b1 c1)) (fmap f (Point3D a2 b2 c2))
    fmap f (Point (Point3D a b c)) = Point (fmap f (Point3D a b c))

main = print $ fmap (+ 1) $ LineSegment (Point3D 0 0 0) (Point3D 1 1 1)