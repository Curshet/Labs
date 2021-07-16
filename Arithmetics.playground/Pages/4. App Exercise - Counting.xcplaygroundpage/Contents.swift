/*:
 ## Упражнение для приложения - подсчёты
 
 >Эти упражнения подкрепляют понятия Swift в контексте фитнес-приложения.
 
 Основная функция вашего фитнес-приложения — подсчёт шагов.  Создайте переменную `steps` и установите её равной 0.  Затем увеличьте её значение на 1, чтобы смоделировать процесс шага пользователя.
 */
var steps = 0
steps += 1
/*:

 В дополнение к подсчёту числа шагов, ваше фитнес-приложение подсчитывает пройденную дистанцию.  Создайте переменную `distance` типа `Double` и установите её равной 50.  Это будет соответствовать тому, что пользователь прошёл 50 футов.
 
 Теперь вам нужно отобразить дистанцию в метрах.  1 метр приблизительно равен 3 футам.  Используйте составной оператор присваивания, чтобы конвертировать `distance` в метры.  Напечатайте результат.
 */
var distance: Double = 50
distance *= 3
print(distance)
//: [Ранее](@previous)  |  страница 4 из 8  |  [Далее: Упражнение - порядок операций](@next)
