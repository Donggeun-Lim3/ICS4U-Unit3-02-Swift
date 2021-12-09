/*
This program uses the MrCoxallStack class.
author  Donggeun Lim
version 1.0
since   2021-12-08
*/

enum InvalidInputError: Error {
    case invalidInput
}

let aStack = MrCoxallStack()
var toPop: String

while true {
    print("Enter the number to push on the stack: ", terminator: "")
    do {
        guard let inputNumber = Int(readLine()!) else {
          throw InvalidInputError.invalidInput
        }
        aStack.push(pushNumber: inputNumber)
        repeat {
            print("\nDo you want to pop (the top element : \(aStack.peek()))? ",
                  terminator: "")
            toPop = String(readLine()!).uppercased()
            if toPop == "Y" || toPop == "YES" {
                print("\nThe top element : \(aStack.pop()) is popped.")
            }
        } while toPop == "Y" || toPop == "YES"
            print("")
    } catch {
        break
    }
}
print("\nThe Stack: ")
aStack.showStack()
print("\nDone.")
