data Point3D a = Point3D a a a deriving Show

instance Functor Point3D where
   fmap f (Point3D a b c)= (Point3D (f a) (f b) (f c))

main = putStrLn $ show $ fmap (+ 1) (Point3D 5 6 7)