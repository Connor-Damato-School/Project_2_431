; Taken from red examples
view [
        bar: progrss 30% rate 10 on-time [
            face/data: remainder (face/data + 10%) 100%
            info/text: form face/data
            info/font/color: random white
        ]
        info: text 4 font-color white "30%"
    ]