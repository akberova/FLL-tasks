data Point3D a = Point3D a a a deriving Show

class MyFunctor f where
    myfmap :: (a -> b) -> f a -> f b

instance MyFunctor Point3D where
    myfmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance MyFunctor GeomPrimitive where
    myfmap fun (Point (Point3D a b c)) = Point (myfmap fun (Point3D a b c))
    myfmap fun (LineSegment (Point3D a b c) (Point3D d e f)) = LineSegment (myfmap fun (Point3D a b c)) 
                                                                           (myfmap fun (Point3D e d f))
