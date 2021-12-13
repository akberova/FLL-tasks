from Tree import SetElement


def testing(result, expectation, testName):
    if result == expectation:
        print(f"Тест {testName} пройден успешно!")
    else:
        print(f"Тест {testName} не пройден! Ожидалось {expectation}, получено {result}")


if __name__ == '__main__':
    # First point
    b = SetElement(10)
    b.insert(20)
    b.insert(5)
    b.insert(25)
    b.insert(2)
    b.insert(4)
    b.insert(15)
    b.insert(12)
    b.insert(6)
    b.insert(8)

    a = SetElement(5)
    a.insert(4)
    a.insert(6)
    a.insert(8)
    a.insert(20)

    testing(b.isInclude(a), True, "1.1")

    a.insert(21)

    testing(b.isInclude(a), False, "1.2")

    # Second point
    b1 = SetElement(10)
    b1.insert(20)
    b1.insert(5)
    b1.insert(25)
    b1.insert(2)
    b1.insert(4)
    b1.insert(15)
    b1.insert(12)
    b1.insert(6)
    b1.insert(8)

    testing(b == b1, True, "2.1")
    testing(b == a, False, "2.2")

    # Third point

    testing(b.getCount(), 10, "3.1")
    testing(b1.getCount(), 10, "3.2")
    testing(a.getCount(), 6, "3.3")

    # Fourth point
    print("Тест 4. Вывод элементов множества")
    print(b.getItems())
    print(a.getItems())

    # Fifth point
    testing(b.getMin(), 2, "5.1")
    testing(b1.getMin(), 2, "5.2")
    testing(a.getMin(), 4, "5.3")

    # Six point
    testing(b.getMax(), 25, "5.1")
    testing(b1.getMax(), 25, "5.2")
    testing(a.getMax(), 21, "5.3")

    # Seventh point
    print("Тест 7. Разбиение множества на классы эквивалентности")

    def relation(x, y) -> bool:
        return x % 3 == y % 3

    for set in a.split(relation):
        print(set.getItems())

    # b.displayTree()
    # b1.displayTree()
    # a.displayTree()
