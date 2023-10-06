
Bottom = Number
Top = Number
count evens from Bottom to Top =
    bottom ... top
        _ filter ^ is even
        _ sum ^
    sum ( filter (bottom ... top) is even )