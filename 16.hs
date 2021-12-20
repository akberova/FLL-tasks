data Point3D a = Point3D a a a deriving Show

class MyFunctor f where
    fmap :: (a -> b) -> f a -> f b

instance MyFunctor Point3D where
    fmap fun (Point3D a b c) = Point3D (fun a) (fun b) (fun c)
