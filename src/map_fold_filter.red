Red [Title: "Map, Fold, and Filter Functions"]
; The closest equivalent to a traditional array or list in Red is the series, or "block".
; access elements with '/'. Blocks are 1-indexed (as opposed to 0-indexed series like C arrays.)

addone: func [a]
[
    a * a
]

iseven: func [a]
[
    a % 2 = 0
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
filter: func [blck f /local result]
[
    result: []
    foreach item blck
    [
        if apply f [item]
        [
        append result item
        ]
    ]
    result
]
data: [1 2 3 4 5 6 7 8]
map_block: (map data :addone) ; [2 4 6 8]
fold_block: (fold data)
filter_block: (filter data :iseven)
print map_block
print fold_block
print filter_block