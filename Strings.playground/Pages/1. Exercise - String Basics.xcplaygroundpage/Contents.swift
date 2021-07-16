/*:
 ## Упражнение — основы String
 
 Создайте константу `name` и присвойте ей строковое значение — ваше имя.
 */
let name = "Daniel"
/*:
 Создайте константу `favoriteQuote` и присвойте ей следующее строковое значение:
 
 
 — Моя любимая цитата: "<ЦИТАТА>"
 
 
 Используйте вашу любимую цитату, и обязательно включите символы кавычек.  Выведите значение `favoriteQuote`.
 */
let favoriteQuote = "— Моя любимая цитата: \"Атлант, расправь плечи!\""
print(favoriteQuote)
/*:
 Создайте выражение if-else, которое выводит «Здесь ничего нет», если `emptyString` пуста, и «Здесь что-то есть» в противоположном случае.
 */
let emptyString = ""

if emptyString.count == 0 {
    print("Здесь ничего нет")
} else {
    print("Здесь что-то есть")
}
//: страница 1 из 5  |  [Далее: Упражнение — конкатенация и интерполяция](@next)
