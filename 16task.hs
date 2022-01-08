data Point3D a = Point3D a a a deriving Show
instance Functor Point3D where
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)