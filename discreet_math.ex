defmodule LeonMath do
    def gdc(a, b) do
        if b == 0 do
            a
        else
            gdc b, (rem a,b)
        end
    end

    def fact(a) do
        case a do
            0 -> 1
            _ -> a * fact(a-1)
        end
    end

    def sums(a) do
        case a do
            0 -> 0
            _ -> a + sums(a-1)
        end
    end

    def sum_evens(a) do
        case a do
            0 -> 0
            x when rem(x,2) == 0 -> a + sum_evens(a-1)
            x -> sum_evens(a-1)
        end
    end
end
