Red [Title: "Tail Recursion Examples"]


non_tr_fact: func [a]
[
    if a = 0 [return 1]
    a * (non_tr_fact (a - 1))
]

tr_fact: func [a]
[
    helper: func [a acc]
    [
        if a = 0 [return acc]
        helper (a - 1) (a * acc)
    ]
    helper a 1
]

num: 5
f: (non_tr_fact num)
tr_f: (tr_fact num)
print num
print f
print tr_f