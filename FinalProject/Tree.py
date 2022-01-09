CENTER_SYMBOL = "┤"
VERTICAL_SYMBOL = "│"
RIGHT_END_SYMBOL = "┌"
LEFT_END_SYMBOL = "└"
LEFT_START_SYMBOL = "┐"
RIGHT_START_SYMBOL = "┘"
# ! Оверхед множества на деревьях. Можно было сделать проще

class SetIterator:
    def __init__(self, root):
        self.items = root.getItems()
        self.current = 0

    def __next__(self):
        if self.current == len(self.items):
            raise StopIteration

        self.current += 1
        return self.items[self.current - 1]

# Использование класс это не ФП, если это не функтор, а это не функтор.
class SetElement:
    def __init__(self, key):
        self.key = key
        self.right = None
        self.left = None

    def insert(self, key):
        if self.key == key:
            return
        elif key > self.key:
            if self.right is None:
                self.right = SetElement(key)
            else:
                self.right.insert(key)
        else:
            if self.left is None:
                self.left = SetElement(key)
            else:
                self.left.insert(key)

    def __repr__(self):
        return str(self.key)

    def __str__(self):
        return str(self.key)

    def __eq__(self, other):
        return other.isInclude(self) and self.isInclude(other)

    def __ne__(self, other):
        return not self == other

    def __iter__(self):
        return SetIterator(self)

    def isInclude(self, other) -> bool:
    #Цикл, это не ФП.
        for item in other:
            if not self.search(item):
                return False

        return True

    def search(self, key) -> bool:
        if self.key == key:
            return True
        elif key > self.key:
            if self.right is not None:
                return self.right.search(key)
            else:
                return False
        else:
            if self.left is not None:
                return self.left.search(key)
            else:
                return False

    def getCount(self):
        return 1 + (self.right.getCount() if self.right is not None else 0) + (self.left.getCount() if self.left is not None else 0)

    def getMin(self):
        if self.left is None:
            return self.key
        else:
            return self.left.getMin()

    def getMax(self):
        if self.right is None:
            return self.key
        else:
            return self.right.getMax()

    def split(self, relation) -> []:
        if not callable(relation):
            raise TypeError

        items = self.getItems()
        result = []
#  цикл, не ФП
        while items:
            newSet = SetElement(items[0])
            del items[0]
            for item in items:
                if relation(newSet.key, item):
                    newSet.insert(item)
                    items.remove(item)
            result.append(newSet)

        return result
#     Не чистая функция
    def getHeight(self):
        leftHeight = self.left.getHeight
        rightHeight = self.right.getHeight

        return leftHeight if leftHeight > rightHeight else rightHeight
# Не чистая функция
    def displayTree(self, indent=' ', last='updown'):
        up = self.right
        down = self.left

        if up is not None:
            next_last = 'up'
            next_indent = '{0}{1}{2}'.format(indent, ' ' if 'up' in last else VERTICAL_SYMBOL, ' ' * len(str(self.key)))
            up.displayTree(next_indent, next_last)

            if last == 'up':
                start_shape = RIGHT_END_SYMBOL
            elif last == 'down':
                start_shape = LEFT_END_SYMBOL
            else:
                start_shape = ' '

        if up is not None and down is not None:
            end_shape = CENTER_SYMBOL
        elif up:
            end_shape = RIGHT_START_SYMBOL
        elif down:
            end_shape = LEFT_START_SYMBOL
        else:
            end_shape = ''

        print('{0}{1}{2}{3}'.format(indent, start_shape, self.key, end_shape))

        if down is not None:
            next_last = 'down'
            next_indent = '{0}{1}{2}'.format(indent, ' ' if 'down' in last else VERTICAL_SYMBOL, ' ' * len(str(self.key)))
            down.displayTree(next_indent, next_last)

    def getItems(self):
        rightSubtree = self.right.getItems() if self.right is not None else []
        leftSubtree = self.left.getItems() if self.left is not None else []
        return [self.key] + rightSubtree + leftSubtree
