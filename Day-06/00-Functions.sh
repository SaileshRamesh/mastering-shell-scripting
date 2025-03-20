#A function is a block of code that can be called whenever needed. 
#It allows for code reuse and better organization.

#Example in Python

def addition(a, b):  # Passing two parameters: a and b
    return a + b  # Returns the sum of a and b

# Calling the function
result_a = addition(2, 3)
result_b = addition(4, 5)
result_c = addition(10, 20)

print(result_a + result_b + result_c)  # Outputs the sum of all results

#Defining Functions in Shell Scripting
#Using the function keyword

function hello {
    # code
}

#Using parentheses:

hello() {
    # code
}
