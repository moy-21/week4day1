def decorator(func):
    def inner():
        print("Before")
        func()
        print("AFter")
    return inner

@decorator
def my_function():
    print("This is inside")

my_function()