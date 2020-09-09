#Sum of positive
#You get an array of numbers, return the sum of all of the positives ones.
#Example [1,-4,7,12] => 1 + 7 + 12 = 20
#Note: if there is nothing to sum, the sum is default to 0.

def positive_sum(arr)
    sum = 0
    arr.each do |i|
      if i > 0
        sum += i
     end
      end
    sum
end

#How do I compare numbers?
#What could be easier than comparing integer numbers? However, the given piece of code doesn't recognize some of the special numbers for a reason to be found. Your task is to find the bug and eliminate it.

def what_is(x)
    if x.equal?(42)
      'everything'
    elsif x == (42 ** 42)
      'everything everythinged'
    else
      'nothing'
    end
end

#You only need one - Beginner
#You will be given an array a and a value x. All you need to do is check whether the provided array contains the value. Array can contain numbers or strings. X can be either.
#Return true if the array contains the value, false if not.

def check(arr,element)
    arr.include?(element)
end

#Beginner Series #1 School Paperwork
#Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'm' pages.
#Your task is to calculate how many blank pages do you need.
def paperwork(n, m)
    if n > 0 && m > 0
      m * n
      else
       0
      end
end

#Array plus array
#I'm new to coding and now I want to get the sum of two arrays...actually the sum of all their elements. I'll appreciate for your help.
#P.S. Each array includes only integer numbers. Output is a number too.
def array_plus_array(arr1, arr2)
    (arr1 + arr2).sum
end

#Beginner Series #4 Cockroach
#The cockroach is one of the fastest insects. Write a function which takes its speed in km per hour and returns it in cm per second, rounded down to the integer (= floored).
def cockroach_speed(s)
    (s / 0.036).floor
end

#Beginner Series #2 Clock
#Clock shows 'h' hours, 'm' minutes and 's' seconds after midnight.
#Your task is to make 'Past' function which returns time converted to milliseconds.
def past(h, m, s)
    ((h * 3600) + (m * 60) + s) * 1000
end

#Holiday VIII - Duty Free
#The purpose of this kata is to work out just how many bottles of duty free whiskey you would have to buy such that the saving over the normal high street price would effectively cover the cost of your holiday.
#You will be given the high street price (normPrice), the duty free discount (discount) and the cost of the holiday.
#For example, if a bottle cost £10 normally and the discount in duty free was 10%, you would save £1 per bottle. If your holiday cost £500, the answer you should return would be 500.
#All inputs will be integers. Please return an integer. Round down.
def duty_free(price, discount, holiday_cost)
    (holiday_cost * 100) / price / discount
end

#Quarter of the year
#Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
#For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.
def quarter_of(month)
    case month
      when 1..3
      return 1
      when 4..6
      return 2
      when 7..9
      return 3
      when 10..12
      return 4
    end
end

#Is n divisible by x and y?
#Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.
def is_divisible(n,x,y)
    n % x == 0 && n % y == 0
end

#The falling speed of petals
#When it's spring Japanese cherries blossom, it's called "sakura" and it's admired a lot. The petals start to fall in late April.
#Suppose that the falling speed of a petal is 5 centimeters per second (5 cm/s), and it takes 80 seconds for the petal to reach the ground from a certain branch.
#Write a function that receives the speed (in cm/s) of a petal as input, and returns the time it takes for that petal to reach the ground from the same branch.
def sakura_fall(v)
    if v > 0
      time = (400 / v.to_f)
    else
      return 0
    end
end

#Hello, Name or World!
#Define a method hello that returns "Hello, Name!" to a given name, or says Hello, World! if name is not given (or passed as an empty String).
#Assuming that name is a String and it checks for user typos to return a name with a first capital letter (Xxxx).
def hello(name = '')
    name = name.downcase.capitalize
    if name.nil? || name.empty?
       "Hello, World!"
      else
       "Hello, #{name}!"
    end
end

#Returning Strings
#Make a function that will return a greeting statement that uses an input; your program should return, "Hello, <name> how are you doing today?".
def greet(name)
    "Hello, #{name} how are you doing today?"
end

#Coefficients of the Quadratic Equation
#In this Kata you are expected to find the coefficients of quadratic equation of the given two roots (x1 and x2).
#Equation will be the form of ax^2 + bx + c = 0
#Return type is a Vector (tuple in Rust, Array in Ruby) containing coefficients of the equations in the order (a, b, c).
#Since there are infinitely many solutions to this problem, we fix a = 1.
#Remember, the roots can be written like (x-x1) * (x-x2) = 0
def quadratic(x1, x2)
    return [1, (x1+x2)*-1, x1*x2]
end

#Grasshopper - Function syntax debugging
#A student was working on a function and made some syntax mistakes while coding. Help them find their mistakes and fix them.
def main(verb, noun)
    verb + noun
end

#Array element parity
#In this Kata, you will be given an array of integers whose elements have both a negative and a positive value, except for one integer that is either only negative or only positive. Your task will be to find that integer.
def solve(arr)
    arr.uniq.sum
end

#Find The Duplicated Number in a Consecutive Unsorted List
#You are given an array of n+1 integers 1 through n. In addition there is a single duplicate integer.
#The array is unsorted.
#An example valid array would be [3, 2, 5, 1, 3, 4]. It has the integers 1 through 5 and 3 is duplicated. [1, 2, 4, 5, 5] would not be valid as it is missing 3.
#You should return the duplicate value as a single integer.
def find_dup(arr)
    for i in arr
      if arr.count(i) > 1
        return i
        end
    end
end

#Find the first non-consecutive number
def first_non_consecutive(arr)
    for i in 0..arr.size
      if arr[i+1] != arr[i] + 1 
        return arr[i+1] 
      end
          end
     return nil
end

#Switch/Case - Bug Fixing #6
#Oh no! Timmy's evalObject function doesn't work. He uses Switch/Cases to evaluate the given properties of an object, can you fix timmy's function?
def eval_object(v)
    a = v['a']
    b = v['b']
      case v['operation']
        when "+" then a+b
        when "-" then a-b
        when "/" then a/b
        when "*" then a*b
        when "%" then a%b
        when "**" then a**b
        else return nil
    end
end

#Unlucky Days
#Friday 13th or Black Friday is considered as unlucky day. Calculate how many unlucky days are in the given year.
#Find the number of Friday 13th in the given year.
def unlucky_days(year)
    count = 0
    for i in 1..12
      if Time.new(year, i, 13).friday?
        count += 1
        end
      ++i
    end
    return count
end

#Welcome!
#The Task:
# - Think of a way to store the languages as a database (eg an object). The languages are listed below so you can copy and paste!
# - Write a 'welcome' function that takes a parameter 'language' (always a string), and returns a greeting - if you have it in your database. It should default to English if the language is not in the database, or in the event of an invalid input.
def greet(language)
    lang = {
     'english'=>'Welcome',
  'czech'=>'Vitejte',
  'danish'=>'Velkomst',
  'dutch'=>'Welkom',
  'estonian'=>'Tere tulemast',
  'finnish'=>'Tervetuloa',
  'flemish'=>'Welgekomen',
  'french'=>'Bienvenue',
  'german'=>'Willkommen',
  'irish'=>'Failte',
  'italian'=>'Benvenuto',
  'latvian'=>'Gaidits',
  'lithuanian'=>'Laukiamas',
  'polish'=>'Witamy',
  'spanish'=>'Bienvenido',
  'swedish'=>'Valkommen',
  'welsh'=>'Croeso' }
    return lang[language] || lang['english']
end

#Check the exam
#The first input array is the key to the correct answers to an exam, like ["a", "a", "b", "d"]. The second one contains a student's submitted answers.
#The two arrays are not empty and are the same length. Return the score for this array of answers, giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer, represented as an empty string (in C the space character is used).
#If the score < 0, return 0.
def check_exam(arr1,arr2)
    score = 0

    for i in 0..3
      if (arr2[i] == arr1[i])
        score += 4
      elsif arr2[i] == ""
        score += 0
      else 
        score -= 1
      end
     ++i
    end 
  if (score <= 0)
    return 0
  else
    return score
  end
end

#Smallest unused ID
#Hey awesome programmer!
#You've got much data to manage and of course you use zero-based and non-negative ID's to make each data item unique!
#Therefore you need a method, which returns the smallest unused ID for your next new data item...
#Note: The given array of used IDs may be unsorted. For test reasons there may be duplicate IDs, but you don't have to find or remove them!
def next_id(arr)
    ind = 0
    arr.sort
      for i in arr
          if (arr.include?(ind))
            ind += 1
          end
      end
    return ind
end

#Function 1 - hello world
#Make a simple function called greet that returns the most-famous "hello world!".
def greet()
    return "hello world!"
end

#Subtract the Sum
#Complete the function which get an input number n such that n >= 10 and n < 10000, then:
#Sum all the digits of n.
#Subtract the sum from n, and it is your new n.
#If the new n is in the list below return the associated fruit, otherwise return back to task 1.
def subtract_sum(number)
    return "apple"
end    

#Short Long Short
#Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty ( length 0 ).
def solution(a, b)
    if (a.length < b.length)
      a + b + a
    else
     b + a + b 
    end
end

#Keep Hydrated!
#Nathan loves cycling.
#Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
#You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.
#For example:
#time = 3 ----> litres = 1
#time = 6.7---> litres = 3
#time = 11.8--> litres = 5
def litres(time)
    return (time * 0.5).to_i
end

#String repeat
#Write a function called repeat_str which repeats the given string src exactly count times.
def repeat_str (n, s)
    return s * n
end

#Grasshopper - Debug sayHello
#The starship Enterprise has run into some problem when creating a program to greet everyone as they come aboard. It is your job to fix the code and get the program working again!
def say_hello(name)
    "Hello, " + name
end

#Grasshopper - Messi Goals
#Create a fourth variable named totalGoals (javascript, C#, Java) or total_goals (python, ruby). totalGoals/total_goals should store the sum of all of Messi's goals for this year.
la_liga_goals = 43
champions_league_goals = 10
copa_del_rey_goals = 5
total_goals = la_liga_goals + champions_league_goals + copa_del_rey_goals

#Grasshopper - Debug
#Your friend is traveling abroad to the United States so he wrote a program to convert fahrenheit to celsius. Unfortunately his code has some bugs.
#Find the errors in the code to get the celsius converter working properly.
def weather_info (temp)
    c = convertToCelsius(temp)
    if (c < 0)
      return ("#{c} is freezing temperature")
    else
      return ("#{c} is above freezing temperature")
    end
end
  
def convertToCelsius (temperature)
    celsius = (temperature - 32) * (5.0/9.0)
    return celsius
end

#Area or Perimeter
#You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
#If it is a square, return its area. If it is a rectangle, return its perimeter.
def area_or_perimeter(l , w)
    if (l == w)
      return l*l
    else
      return 2*(l + w) 
    end
end

#Capitalization and Mutability
#Your coworker was supposed to write a simple helper function to capitalize a string (that contains a single word) before they went on vacation.
#Unfortunately, they have now left and the code they gave you doesn't work. Fix the helper function they wrote so that it works as intended (i.e. make the first character in the string "word" upper case).
#Don't worry about numbers, special characters, or non-string types being passed to the function. The string lengths will be from 1 character up to 10 characters, but will never be empty.
def capitalize_word(word)
    word.capitalize()
end

