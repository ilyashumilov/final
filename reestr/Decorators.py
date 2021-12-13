


def printArgs(name, *args, **kwargs):
    print(name)
    for i in args:
        print(i)
    for i in kwargs:
        print(kwargs[i])



printArgs('first','a','b','c', a = 1, b = 2)