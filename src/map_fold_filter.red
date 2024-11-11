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


data: [1 2 3 4]
result: (map data :addone)
print result