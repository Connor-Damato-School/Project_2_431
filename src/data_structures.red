Red [Title: "Data Structures"]

"Tree data structure"
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


"Linked list data structure"
Head: object [
    value: none
    next: none
]

"Add a node to the linked list"
append: func [head value][
    either head/next = none [
        print ["Appending new node with value:" value]
        head/next: make Head [value: value next: none]
        head/next/value: value ; ngl i have no idea why this line is necessary but it is
    ] [
        append head/next value
    ]
]

"Traverse the linked list"
traverse: func [head][
    print head/value
    if head/next [
        traverse head/next
    ]
]

"Remove a node from the linked list"
remove: func[head node][
    if head = node [head: head/next return] ; covers case where node is the head
    either head/next = node
    [head/next: node/next]
    [either head/next [remove head/next node][return]]
]

head: make Head [value: 1 next: none]
append head 2  ; Add a node to the linked list
append head 3  ; Add another node to the linked list
append head 4  ; Add another node to the linked list
; head2: make Head [value: 4 next: make Head [value: 5 next: make Head [value: 6 next: none]]]

print "Traversing the linked list:"
traverse head

print "Removing the second node:"
remove head head/next

print "Traversing the linked list after removal:"
traverse head