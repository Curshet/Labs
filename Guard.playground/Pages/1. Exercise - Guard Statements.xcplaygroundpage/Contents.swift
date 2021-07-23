import UIKit
/*:
 ## Упражнение - оператор guard

 Вы пишете функцию для вычисления площади прямоугольника.  Однако, если вам передадут в неё отрицательное значение, вы не должны вычислять отрицательную площадь.  Создайте функцию `calculateArea`, принимающую `x` и `y` — два параметра типа `Double`, и возвращающую опциальное значение типа `Double`.   В начале функции используйте оператор guard, проверающий, что оба параметра больше нуля, возвращающий `nil`, если это не так.  Если проверка пройдёт успешно, вычислите площадь, умножив `x` на `y`, и верните полученное значение.  Вызовите функцию один раз с положительными параметрами, а другой раз — хотя бы с одним отрицательным параметром.
*/
func calculateArea(x: Double, y: Double) -> Double? {
    
    guard (x >= 0 && y >= 0) else { return nil }
    
    return Double?(x * y)

}

calculateArea(x: 15, y: 35)
calculateArea(x: 15, y: -35)

/*:
 Создайте функцию `add`, принимающую два опциональных целых числа в качестве параметров и возвращающую опциональное целое значение.  Используйте один оператор `guard` для извлечения обоих опциональных параметров, возвращающий `nil` в теле `guard` в случае, если один или оба параметра не содержат значения.  Если оба параметра извлечены, верните их сумму.  Вызовите функцию один раз с числами (не `nil`), а другой раз — хотя бы с одним параметром `nil`.
 */
func add(a: Int?, b: Int?) -> Int? {
    
    guard (a != nil) && (b != nil) else { return nil }
    
    return Int?(a! + b!)
    
}

add(a: nil, b: 6)
add(a: 5, b: 7)
/*:
 Во время работы с объектами UIKit, время от времени вам нужно будет извлекать опциальные значения, введённые пользователем.  Например, текстовые поля в коде ниже имеют свойства `text` типа `String?`.
 
 Напишите функцию без параметров `createUser` после кода ниже, возвращающую опциональный объект типа `User`.  Используйте оператор guard в начале функции, чтобы извлечь значения `text` каждого из текстовых полей, и вернуть `nil` в случае, если не все поля имеют значения.  После этого используйте извлечённые значения для создания экземпляра объекта типа `User`, который ваша функция вернёт.
 */
struct User {
    
    var firstName: String
    var lastName: String
    var age: String
    
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Юрий"
lastNameTextField.text = "Дудь"
ageTextField.text = "31"


func createUser() -> User? {
                                                                    
    guard (firstNameTextField.text != "") && (lastNameTextField.text != "") && (ageTextField.text != "") else { return nil }
    
    let object = User(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, age: ageTextField.text!)
    
    return User?(object)
    
}

let userOne = createUser()
/*:
 Вызовите созданную вами функцию и сохраните возвращённое ей значение.  Получите значение типа `User` с помощью стандартной привязки опционалов, и напечатайте значения полученных свойств.
 */
let userTwo = createUser()

if let user = userTwo {
    print(user)
}
//: страница 1 из 2  |  [Далее: упражнение для приложения - оператор guard](@next)
