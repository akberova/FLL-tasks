data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
    fmap f (Point3D a b c) = Point3D (f a) (f b) (f c)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor GeomPrimitive where
    fmap f (Point(Point3D x y z)) = (Point(Point3D (f x) (f y) (f z)))
    fmap f (LineSegment(Point3D x1 y1 z1) (Point3D x2 y2 z2))=LineSegment(Point3D (f x1) (f y1) (f z1)) (Point3D (f x2) (f y2) (f z2))