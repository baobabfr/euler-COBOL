*> If we list all the natural numbers below 10 that are multiples of 3 and 5 we get 3,5,6 and 9 the sum is 23
*> Find the sum of multiples of 3 and 5 under 1000

identification division.
program-id. euler_p1.

data division.
working-storage section.
01 quotient pic 9(4).
01 rem pic 9(4).
01 total pic 9(9).
01 i pic 9(4) value 0.

procedure division.
main.
perform varying i from 1 by 1 until i > 999
    divide i by 3
        giving quotient
        remainder rem
    end-divide
    if rem = 0 
        add i to total
        move 0 to rem
        exit perform cycle
    end-if

    divide i by 5
        giving quotient
        remainder rem
    end-divide

    if rem = 0
        add i to total
        move 0 to rem
    end-if
end-perform


display total.
