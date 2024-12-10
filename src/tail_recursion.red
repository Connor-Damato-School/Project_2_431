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

num1: 5
f: (non_tr_fact num1)
tr_f: (tr_fact num1)
print num1
print f
print tr_f

non_tr_fibonacci: func [a]
[
    if a <= 1 [return a]
    (non_tr_fibonacci (a - 1)) + (non_tr_fibonacci (a - 2))
]

tr_fibonacci: func [a]
[
    helper: func [a acc1 acc2]
    [
        if a = 0 [return acc1]
        helper (a - 1) acc2 (acc1 + acc2)
    ]
    helper a 0 1
]

num2: 10
f2: (non_tr_fibonacci num2)
tr_f2: (tr_fibonacci num2)
print num2
print f2
print tr_f2