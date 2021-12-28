data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)

data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor GeomPrimitive where
    fmap fun (Point (Point3D x y z)) = (Point (Point3D (fun x) (fun y) (fun z)))
    fmap fun (LineSegment (Point3D x1 y1 z1) (Point3D x2 y2 z2)) = LineSegment (Point3D (fun x1) (fun y1) (fun z1)) (Point3D (fun x2) (fun y2) (fun z2))