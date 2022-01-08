module MultSecond where
    import Data.Function

    multSecond = g `on` h

    g = (*)

    h (a,b) = b