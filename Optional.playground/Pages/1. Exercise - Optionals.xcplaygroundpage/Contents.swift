/*:
 ## Упражнение - опциональные значения
 
  >Во время выполнения упражнений данного плейграунда, вы будете выводить в консоль опциональные значения.  Компилятор Swift выдаст предупреждение: «Expression implicitly coerced from `Int?` to Any».  Для целей выполнения заданий, можете данные предупреждения игнорировать.

 Ваше приложение запрашивает пользователя его возраст.  Введённые пользователем данные передаются вам в виде текста, `String`.  Однако, вам нужно сохранить значение в виде целого числа `Int`.  Пользователь может сделать ошибку и ввести неверные данные.
 
 Объявите константу `userInputAge` типа `String` и присвойте ей значение "34e" для моделирования опечатки.  Затем определите константу `userAge` типа `Int` и используйте конструктор `Int` для преобразования `userInputAge`.  Какую ошибку вы получаете?
*/
let userInputAge = "34"
//let userAge: Int = Int(userInputAge)                                //error (nil)
/*:
 Теперь поменяйте тип `userAge` на `Int?`, и напечатайте значение `userAge`.  Почему значение `userAge` равно `nil`?  Ответьте в комментарии или внутри команды print.
 */
//let userAge = Int(userInputAge)                                     //использование Optional (Int?)
/*:
 Теперь исправьте опечатку в значении `userInputAge`.  Что-нибудь в результатах вывода кажется вам неуместным?
 
 Напечатайте `userAge` снова, но теперь разверните `userAge` с помощью оператора «!».
 */
let userAge = Int(userInputAge)

print("Your age is \(userAge!)!")                                   //force unwrapping (not safe)
/*:
 Используйте привязку опционалов для извлечения `userAge`.  Если `userAge` содержит значение, выведите его в консоль.
 */
if let age = userAge {                                              //optional binding (safe method)
    print("Your are is \(age) years old!")
} else {
    print("Please, enter the correct value of age!")
}
//: страница 1 из 6  |  [Далее: упражнение для приложения - узнаём пульс](@next)
