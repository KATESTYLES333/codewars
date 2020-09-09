# Sum of odd numbers
#Calculate the row sums of this triangle from the row index (starting at index 1)
def row_sum_odd_numbers(n)
    sum = 0
    newNum = n*n-n+1
    for i in 1..n
      sum += newNum
      newNum += 2
      end
    sum
end

#Sort Santa's Reindeer
#Write a function that accepts a sequence of Reindeer names, and returns a sequence with the Reindeer names sorted by their last names.
def sort_reindeer reindeer_names
    reindeer_names.sort_by{|names| names[/\s\w+/]}
end

#Capitals first!
#Create a function that takes an input String and returns a String, where all the uppercase words of the input String are in front and all the lowercase words at the end. The order of the uppercase and lowercase words should be the order in which they occur.
def capitals_first(string)
    splitArr = string.split
    withCaps = []
    noCaps = []
    splitArr.each do |n|
      if n[0].match?(/[A-Z]/)
        withCaps.push(n)
      elsif n[0].match?(/[a-z]/)
        noCaps.push(n)
      end
    end
     (withCaps + noCaps).join(' ')
end

#Product of the main diagonal of a square matrix.
#Given a list of rows of a square matrix, find the product of the main diagonal.
def main_diagonal_product(mat)
    sum = 1
   i = 0
   while i < mat.length
     sum *= mat[i][i]
     i += 1
   end
   sum
end

#Diagonals sum
#Create a function that receives a (square) matrix and calculates the sum of both diagonals (main and secondary)
def sum(arr)
    sum = 0
    i = 0
    while i < arr.length
      sum += arr[i][i]
      sum += arr.reverse[i][i]
      i += 1
    end
    sum
end

#Thinking & Testing : How many "word"?
def testit(s)
    s.downcase.scan(/w.*?o.*?r.*?d/).count
end

#Reverse the bits in an integer
#Write a function that reverses the bits in an integer. For example, the number 417 is 110100001 in binary. Reversing the binary is 100001011 which is 267. 
#You can assume that the number is not negative.
class Integer
    def reverse
      to_s(2).reverse.to_i(2)
    end
end

#Largest pair sum in array
#Given a sequence of numbers, find the largest pair sum in the sequence.
def largest_pair_sum(numbers)
    numbers.max(2).sum
end

#Indexed capitalization
#Given a string and an array of integers representing indices, capitalize all letters at the given indices.
#For example: capitalize("abcdef",[1,2,5]) = "aBCdeF", capitalize("abcdef",[1,2,5,100]) = "aBCdeF". There is no index 100.
#The input will be a lowercase string with no spaces and an array of digits.
def capitalize(s,ind)
    for i in ind
      if i < s.size
        s[i] = s[i].upcase
      end
    end
    s
end

#Simple string characters
#In this Kata, you will be given a string and your task will be to return a list of ints detailing the count of uppercase letters, lowercase, numbers and special characters, as follows.
#Solve("*'&ABCDabcde12345") = [4,5,5,3]. 
def solve s
    [s.count("A-Z"), s.count("a-z"), s.count("0-9"), s.count("^a-zA-Z0-9")]
end

#Orthogonal Vectors
#Suppose I have two vectors: (a1, a2, a3, ..., aN) and (b1, b2, b3, ..., bN). The dot product between these two vectors is defined as:
#a1*b1 + a2*b2 + a3*b3 + ... + aN*bN
#The vectors are classified as orthogonal if the dot product equals zero.
def orthogonal?(vecA, vecB)
    isOrth = 0
    i = 0
    while i < vecA.length
      isOrth += (vecA[i]*vecB[i])
      i += 1
    end
    isOrth == 0
end

#Halving Sum
#Given a positive integer n, calculate the following sum: n + n/2 + n/4 + n/8 + ...
def halving_sum(n)
    sum = 0
    den = 1
    while n/den > 1
      sum += (n/den)
      den *= 2
    end
    sum+1
end

#Growth of a Population
#In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?
def nb_year(p0, percent, aug, p)
    i = 0
    while p0 < p
      p0 += (p0 * percent*0.01).to_i + aug
      i += 1
      end
  return i
end

#Cartesian coordinates from degree angle
#Write a simple function that takes polar coordinates (an angle in degrees and a radius) and returns the equivalent cartesian coordinates (rouded to 10 places).
def coordinates(degrees, radius)
    r = (degrees * Math::PI)/180
    firstCoordinate = (Math::cos(r) * radius).round(10)
    secondCoordinate = (Math::sin(r) * radius).round(10)
    return [firstCoordinate,secondCoordinate]
end

#Going to the cinema
def movie(card, ticket, perc)
    count = 0
    aS = ticket
    c = card
    price = 0
  
    while (price <= c.ceil)
      c += (aS * perc)
      aS *= perc
      price += ticket
      count += 1
    end
    return count
end

#Simple remove duplicates
#In this Kata, you will remove the left-most duplicates from a list of integers and return the result.
def solve arr 
    arr.reverse.uniq.reverse
end

#Fix string case
#In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:
#make as few changes as possible.
#if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
def solve s
    lower = s.scan(/[a-z]/).length
    upper = s.scan(/[A-Z]/).length
    if (lower >= upper)
      return s.downcase
    else 
      return s.upcase
    end  
end

#Find the sum of the roots of a quadratic equation
#Implement function which will return sum of roots of a quadratic equation rounded to 2 decimal places, if there are any possible roots, else return None/null/nil/nothing. If you use discriminant,when discriminant = 0, x1 = x2 = root => return sum of both roots. There will always be valid arguments.
def roots(a,b,c)
    desc = (b**2) - (4.0 * a * c)
    if (desc >= 0 )
      x1 = (-b + Math.sqrt(desc))/(2.0*a)
      x2 = (-b - Math.sqrt(desc))/(2.0*a)
      return (x1 + x2).to_f.round(2) 
    else
      return nil
    end
end

#Ordered Count of Characters
#Count the number of occurrences of each character and return it as a list of tuples in order of appearance. For empty output return an empty list.
def ordered_count(str)
    lts = str.chars.uniq
    lts.collect {|letter| [letter, str.count(letter)]}
end

#Simple fibonacci strings
#Given that
#f0 = '0'
#f1 = '01'
#f2 = '010' = f1 + f0
#f3 = '01001' = f2 + f1
def solve(n)
    arr = ["0","01"]
    for i in 2..n do
        arr.push(arr[i-1]+arr[i-2])
    end
  return arr[n]
end



