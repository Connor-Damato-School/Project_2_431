Red [Title: "Data Structures"]

Tree: object [
    value: none
    left: none
    right: none
]

; Create leaf nodes
leaf1: make Tree [left: none right: none value: 1]
leaf2: make Tree [left: none right: none value: 2]

; Create a root node with branches
root: make Tree [left: leaf1 right: leaf2 value: 3]

"Traverse the tree in order"
inorder: func [node][
    if node [
        inorder node/left
        print node/value
        inorder node/right
    ]
]

"Traverse the tree post order"
postorder: func [node][
    if node [
        postorder node/left
        postorder node/right
        print node/value
    ]
]

find: func [node value][
    if node [
        if node/value = value [return node]
        find node/left value
        find node/right value
    ]
]

print "Inorder traversal:"
inorder root
print "Postorder traversal:"
postorder root
print "Finding root 2:"
either find root 2 [print "Found!"][print "Not found!"]
print "Finding root 4:"
either find root 4 [print "Found!"][print "Not found!"]