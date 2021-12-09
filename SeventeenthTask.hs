data Point3D a = Point3D a a a deriving Show
data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor Point3D where 
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)

instance Functor GeomPrimitive where 
    fmap fun (LineSegment (Point3D a1 b1 c1) (Point3D a2 b2 c2)) = LineSegment (fmap fun (Point3D a1 b1 c1)) (fmap fun (Point3D a2 b2 c2))
    fmap fun (Point (Point3D a b c)) = Point (fmap fun (Point3D a b c))