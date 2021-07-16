/*:
 ## Упражнение - словари
 
 Создайте переменную типа словарь `[String: Int]`, которая будет содержать количество дней в каждом из месяцев.  Используя литералы, инициализируйте её значениями января, февраля и марта.  В январе 31 день, в феврале 28, в марте — 31.  Выведите содержимое словаря в консоль.
 */
var days: Dictionary<String, Int> = ["Январь": 31, "Февраль": 28, "Март": 31]
print(days)
/*:
 Используя индексацию, добавьте в коллекцию апрель со значением 30.  Выведите содержимое словаря в консоль.
 */
days["Апрель"] = 31
print(days)
/*:
 Наступил високосный год.  Сделайте количество дней в феврале равным 29 с помощью метода `updateValue(_:, forKey:)`.  Выведите содержимое словаря в консоль.
 */
days.updateValue(29, forKey: "Февраль")
print(days)
/*:
 С помощью if-let получите количество дней для ключа "январь".  Если словарь содержит данные, выведите "Количество дней в январе: 31", где 31 — это значение, полученное из словаря.
 */
if let number = days["Январь"] {
    print("Количество дней в январе - \(number).")
} else {
    print("We have nil!")
}
/*:
 Заданы следующие массивы.  Создайте новый словарь [String : [String]].  `shapesArray` должен использовать ключ "формы", а `colorsArray` — ключ "цвета".    Выведите содержимое получившегося словаря.
 */
let shapesArray = ["круг", "квадрат", "треугольник"]
let colorArray = ["красный", "зелёный", "синий"]

var dict: [String : String] = [:]
dict = [shapesArray[0] : colorArray[0], shapesArray[1] : colorArray[1], shapesArray[2] : colorArray[2]]
print(dict)

if let color = dict[shapesArray[shapesArray.count - 1]] {
    print("Last element is \"\(color)\".")
}
//: [Ранее](@previous)  |  страница 3 из 4  |  [Далее: Упражнение для приложения - темп](@next)