/*
This program uses the MrCoxallStack class.
author  Donggeun Lim
version 1.0
since   2021-12-10
*/

// Class that emulates a stack
class MrCoxallStack<T> {

    // ArrayList signifying a stack
    private var stackAsArray = [T]()

    // Pushes a number to the stack
    func push(pushElement: T) {
        self.stackAsArray.insert(pushElement, at: 0)
    }

    // Pops the first element in the stack
    func pop() throws -> T {
        return self.stackAsArray.removeFirst()
    }

    // Displays the stack
    func showStack() {
        self.stackAsArray.forEach { element in print("\(element)")}
    }
}
