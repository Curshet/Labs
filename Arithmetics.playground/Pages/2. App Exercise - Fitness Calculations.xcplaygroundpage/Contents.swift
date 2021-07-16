/*:
 ## Упражнение для приложения - фитнес-вычисления
 
 >Эти упражнения подкрепляют понятия Swift в контексте фитнес-приложения.
 
 Ваше фитнес-приложение отслеживает пульс пользователя, но вы также хотите показывать их средний пульс за последний час.  Создайте три константы, `heartRate1`, `heartRate2` и `heartRate3`, соотвествующие разным показаниям пульса.  Присвойте каждой из них разные значения от 60 до 100.  Создайте константу `addedHR`, равную сумме всех трёх показаний пульса.  Теперь создайте константу `averageHR`, равную `addedHR`, делённую на 3, чтобы получить среднее значение.  Напечатайте результат.
 */
let heartRate1 = 70
let heartRate2 = 64
let heartRate3 = 83
let addedHR = heartRate1 + heartRate2 + heartRate3
print(addedHR)
/*:
 Теперь объявите ещё три константы, `heartRate1D`, `heartRate2D` и `heartRate3D`, равные тем же значениям, что и `heartRate1`, `heartRate2` и `heartRate3`.  Эти новые константы должны быть типа `Double`.  Создайте константу `addedHRD`, равную сумме трёх новых показаний пульса.  Создайте константу `averageHRD`, равную `addedHRD`, делённую на 3, чтобы получить среднее значение новых констант.  Напечатайте результат.  Отличается ли он от предыдущего?  Почему?  Напечатайте ответ.
 */
let heartRate1D: Double = 70
let heartRate2D: Double = 64
let heartRate3D: Double = 83
let addedHRD = heartRate1D + heartRate2D + heartRate3D
let averageHRD = addedHRD / 3
print(averageHRD)                                               //averageHRD согласно вычислениям получил тип Double
/*:
 Представьте, что к середине дня пользователь сделал(а) 3 467 шагов при цели в 10 000.  Создайте константы `steps` и `goal`.  Обе должны быть типа `Double`, чтобы вычисления были  более точными.  `steps` должна получить значение 3 467, а `goal` — значение 10 000.  Создайте константу `percentOfGoal`, которая равна достигнутой к настоящему моменту доли от цели в процентах от цели.
 */
let steps: Double = 3467
let goal: Double = 10000
let percentOfGoal = 3467 / (goal / 100)
print(percentOfGoal)
//: [Ранее](@previous)  |  страница 2 из 8  |  [Далее: Упражнение - составные операторы присваивания](@next)