Red[]

; Main function
viw [
    title "Increment Counter"
    size 200x150

    ; Display area for the counter value
    counter-display: text 80x50 "0" [
        font: [size: 24]
    ]

    ; Increment button
    button "Increment" 80x30 [
        increment-counter
    ]
]

; Counter state variable
counter: 0

; Function to increment the counter and update the display
increment-counter: func [] [
    counter: counter + 1
    counter-display/text: form counter     ; Update display with the new value
    show counter-display                  ; Refresh the GUI
]