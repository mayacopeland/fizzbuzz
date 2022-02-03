import sys
def main():
    count = int(sys.argv[1])
    i = 1

    while i <= count:
        if i % 15 == 0:
            print("FizzBuzz")
        elif i % 3 == 0:
            print("Fizz")
        elif i % 5 == 0:
            print("Buzz")
        else:
            print(i)
        i += 1

    return 0


if __name__ == "__main__":
    main()