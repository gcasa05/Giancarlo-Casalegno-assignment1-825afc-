def fib(n)
    if n == 0
        return []
    elsif n == 1
        return [0]
    end
    
    fibs = [0, 1]
    for i in 2...n
        fibs << fibs[i-1] + fibs[i-2]
    end
    fibs
end

def isPalindrome(n)
    s = n.to_s
    s == s.reverse
end

def nthmax(n, a)
    if n >= a.length
        return nil
    end
    a.sort.reverse[n]
end

def freq(s)
    if s.length == 0
        return ""
    end
    
    counts = {}
    s.each_char do |c|
        if counts[c]
            counts[c] += 1
        else
            counts[c] = 1
        end
    end
    
    max_char = ""
    max_count = 0
    counts.each do |char, count|
        if count > max_count
            max_count = count
            max_char = char
        end
    end
    max_char
end

def zipHash(arr1, arr2)
    if arr1.length != arr2.length
        return nil
    end
    
    result = {}
    for i in 0...arr1.length
        result[arr1[i]] = arr2[i]
    end
    result
end

def hashToArray(hash)
    arr = []
    hash.each do |k, v|
        arr << [k, v]
    end
    arr
end
