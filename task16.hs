data Point3D a = Point3D a a a deriving Show

instance Functor Point3D
    where
        fmap func (Point3D a a1 a2) = Point3D (func a) (func a1) (func a2)

--можно сделать fmap (+1) (Point3D 5 6 7)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor GeomPrimitive
    where
        fmap func (Point (Point3D a a1 a2)) = Point (fmap func (Point3D a a1 a2))
        fmap func (LineSegment (Point3D a a1 a2) (Point3D a3 a4 a5)) = LineSegment (fmap func (Point3D a a1 a2)) (fmap func (Point3D a3 a4 a5))

--можно проверить fmap (+1) $ Point (Point3D 0 0 0)
--делаем fmap (+1) $ LineSegment (Point3D 0 0 0) (Point3D 1 1 1)

main = print $ fmap (+1) (Point3D 5 6 7)