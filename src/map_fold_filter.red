Red [Title: "Map, Fold, and Filter Functions"]
; The closest equivalent to a traditional array or list in Red is the series, or "block".

; access elements with '/'. Blocks are 1-indexed (as opposed to 0-indexed series like C arrays.)
addone: func [a]
[
    a + 1
]
map: func [block f]
[
    result: []
    foreach item block
    [
        append result apply f [item]
    ]
    result
]

fold: func [block /local result]
[
    result: 0
    foreach item block
    [
        result: result + item
    ]
    result
]



data: [1 2 3 4]
map_block: (map data :addone)
fold_block: (fold data)
print map_block
print fold_block