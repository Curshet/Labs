/*:
 ## Упражнение — Возвращение результатов
 
 Напишите функцию `greeting`, которая принимает аргумент типа `String` с именем `name`, и возвращает строку `String`, которая приветствует собеседника по имени, переданным в функцию.  То есть, если вы передадите "Денис", возвращаемое значение может иметь вид "Привет, Денис!  Как настроение?".  Вызовите функцию несколько раз с разными аргументами и напечатайте результаты её работы.
 */
func greeting(name: String) -> String {
    
    return "Привет, \(name)! Как настроение?"
    
}

let one = greeting(name: "Алёша")
print(one)

let two = greeting(name: "Олег")
print(two)

let three = greeting(name: "Саня")
print(three)
/*:
 Напишите функцию, принимающую два аргумента типа `Int`, и возвращающую `Int`.  Функция должна перемножить аргументы, добавить 2, затем вернуть результат.  Вызовите функцию несколько раз с разными аргументами и напечатайте результаты её работы.
 */
func multiplyArguments(_ first: Int, _ second: Int) -> Int {
    
    return first * second + 2

}


let first = multiplyArguments(10, 10)
print(first)

let second = multiplyArguments(435325, 536723576)
print(second)
//: [Ранее](@previous)  |  страница 5 из 6  |  [Далее: Упражнение для приложения — разделение функций](@next)