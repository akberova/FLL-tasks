data Point3D a = Point3D a a a deriving Show
instance Functor Point3D where
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show
instance Functor GeomPrimitive where
    fmap fun (Point (Point3D a b c)) = Point (fmap fun (Point3D a b c))
    fmap fun (LineSegment (Point3D a b c) (Point3D d e f)) = LineSegment (fmap fun (Point3D a b c)) (fmap fun (Point3D d e f))
