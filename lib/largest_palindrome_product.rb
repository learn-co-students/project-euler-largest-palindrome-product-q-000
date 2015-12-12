
def largest_palindrome_product()
start = 999999
store = []
find = []
    9.times do

        if start / 100 < 999
            big = start / 100
        else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end

    	break if store.length == 1
    	start-=1100
    	end

	9.times do
    	break if store.length == 1
    	1.times do
           if start / 100 < 999
            	big = start / 100
           else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end

    	break if store.length == 1
    	start-=110
    	end
    	9.times do
            if start / 100 < 999
            	big = start / 100
            else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end

    break if store.length == 1
    start-=1100
    end
    end
    8.times do
    1.times do
        if start / 100 < 999
            big = start / 100
        else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end

    break if store.length == 1
    start-=11
    end
    9.times do
         if start / 100 < 999
            big = start / 100
        else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end

    break if store.length == 1
    start-=1100
    end
    9.times do
        break if store.length == 1
    1.times do
         if start / 100 < 999
            big = start / 100
        else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end
    break if store.length == 1
    start-=110
    end
    9.times do
         if start / 100 < 999
            big = start / 100
        else
            big = 999
        end

        loop do
            find = start / big
            break if find > 999 || big < 100 || store.length==1
            if start % big == 0
                store.push(start)
            end
            big-=1
        end
    break if store.length == 1
    start-=1100
    end
    end
    end
return store[0]
end

