-- I dont know why but i dont have this function
singleton :: a -> [a]
singleton x = [x]

--                        delim     result_buf    thing_buf    remaining_buf result_buf
genericSliceTextHelper :: Char  ->  [[Char]]  ->  [Char]   ->  [Char]   ->   [[Char]]
genericSliceTextHelper _ result_buf [] []        = result_buf
genericSliceTextHelper delim result_buf thing_buf [] = genericSliceTextHelper delim (result_buf ++ (singleton thing_buf)) [] []
genericSliceTextHelper delim result_buf thing_buf remaining_buf =
    if(head(remaining_buf) == delim) then
        if(length thing_buf == 0) then
            genericSliceTextHelper delim result_buf [] (tail remaining_buf)
        else
            genericSliceTextHelper delim (result_buf ++ (singleton thing_buf)) [] (tail remaining_buf)
    else
        genericSliceTextHelper delim result_buf (thing_buf ++ (singleton (head remaining_buf))) (tail remaining_buf)

--                  delim   input     output
genericSliceText :: Char -> [Char] -> [[Char]]
genericSliceText _ [] = error "stop doing this maaaan god dammit"
genericSliceText delim input = genericSliceTextHelper delim [] [] input

sliceWords     input = genericSliceText ' ' input
sliceSentences input = genericSliceText '.' input

-- testing --
assert :: Bool -> Bool
assert False = error "Assertion failed"
assert True  = True

testSliceWords     = assert((sliceWords "Slice this thing into words") == ["Slice", "this", "thing", "into", "words"])
testSliceSentences = assert((sliceSentences "Slice this thing into sentences. Right. NOW!") == ["Slice this thing into sentences", " Right", " NOW!"])
