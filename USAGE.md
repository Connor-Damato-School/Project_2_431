# Usage
## Setting up your environment

## Syntax
### Assigning variables
`var: 12`

`var2: "hi"`

### Writing functions
```
<func name>: func[<parameter names (separated by spaces)>][<code>]

```

### Control Structures:
### 'if' statements
- `if <condition> [<block if true>]`
- `either <condition> [<block if true>][<block if false>] `

### 'case' statements
`case [<condition> [<body>] ...]`
- can be repeated with any number of condition-body pairs
- executes the body following the *first* condition met

### 'loop' statements
`loop <counter> [<code>] `
- The counter must return a positive integer value

### 'while' statement
`while [<condition>][<code>]`
- Just like a regulare while statement, the block will loop while the condition is true.
### 'until' statement
`until [<code> <condition>]`
- The block of code will loop until the given condition is met
- The last line must be a conditional statement in the given block

### Other
`all [<condition-1> <condition-2> ...]`
-  returns true if all conditional statements are true

`any [<condition-1> <condition-2> ...]`
- returns true if any conditional statements are true
## Compiling and running your program