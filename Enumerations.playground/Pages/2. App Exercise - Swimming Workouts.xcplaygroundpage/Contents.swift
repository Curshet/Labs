/*:
 ## Упражнение для приложения - тренировки по плаванию
 
>Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 В предыдущих заданиях мы обсуждали возможность для вашего фитнес-приложения отслеживать тренировки по плаванию.  Создайте ниже структуру `SwimmingWorkout` со свойствами `distance` (дистанция), `time` (время) и `stroke` (стиль).  `distance` и `time` должны быть типа `Double` и представлять дистанцию в метрах и время в секундах, а `stroke` должен быть типа `String`.
 */
/* struct SwimmingWorkout {

    var distance: Double
    var time: Double
    var stroke: String

} */

/*:
 Использование для `stroke` типа `String` не совсем безопасно.  Создайте перечисление `Stroke` внутри структуры `SwimmingWorkout`.  Перечисление должно иметь опции `freestyle` (вольный стиль), `butterfly` (баттерфляй), `backstroke` (на спине) и `breaststroke` (брасс).  Измените тип `stroke` со `String` на `Stroke`.  Создайте два экземпляра объектов `SwimmingWorkout`.
 */
/* struct SwimmingWorkout {

    var distance: Double
    var time: Double
    var stroke: Stroke

    enum Stroke {

        case freestyle
        case butterfly
        case backstroke
        case breaststroke

    }

}

var swimmingHumanOne: SwimmingWorkout = .init(distance: 15, time: 30, stroke: .butterfly)
var swimmingHumanTwo: SwimmingWorkout = .init(distance: 25, time: 40, stroke: .freestyle) */

/*:
 Вам нужно заносить в журнал тренировки по плаванию отдельно по каждому виду плавания.  Для этого можно использовать статические массивы внутри типа `SwimmingWorkout`.  Определите четыре переменные типа с именами `freestyleWorkouts` (тренировки вольным стилем), `butterflyWorkouts` (тренировки баттерфляем), `backstrokeWorkouts` (тренировки на спине) и `breaststrokeWorkouts` (тренировки брассом) внутри структуры `SwimmingWorkout`.  Каждое свойство должно быть типа `[SwimmingWorkout]` и по умолчанию должно содержать пустой массив.
 */
/* struct SwimmingWorkout {

    var distance: Double
    var time: Double
    var stroke: Stroke

    var freestyleWorkouts: [SwimmingWorkout] = []
    var butterflyWorkouts: [SwimmingWorkout] = []
    var backstrokeWorkouts: [SwimmingWorkout] = []
    var breaststrokeWorkouts: [SwimmingWorkout] = []

    enum Stroke {

        case freestyle
        case butterfly
        case backstroke
        case breaststroke

    }

} */



/*:
 Добавьте метод в `SwimmingWorkout` под названием `save()`, не принимающий аргументов и не возвращающий значение.  Этот метод добавит свой экземпляр в один из массивов внутри типа `SwimmingWorkout`, соответствующий стилю плавания.  Внутри метода `save()` используйте оператор switch для проверки содержимого свойства `stroke`, и добавьте `self` в нужный массив.  Вызовите save для двух экземпляров `SwimmingWorkout`, которые вы создали ранее, и распечатайте содержимое массивов, чтобы убедиться, что ваш метод `save` работает правильно.
 */
struct SwimmingWorkout {

    var distance: Double
    var time: Double
    var stroke: Stroke
    
    var freestyleWorkouts: [SwimmingWorkout] = []
    var butterflyWorkouts: [SwimmingWorkout] = []
    var backstrokeWorkouts: [SwimmingWorkout] = []
    var breaststrokeWorkouts: [SwimmingWorkout] = []
    
    enum Stroke {

        case freestyle
        case butterfly
        case backstroke
        case breaststroke

    }
    
    mutating func save() {
        
        switch stroke {
            
        case .backstroke:
            backstrokeWorkouts.append(self)
        case .breaststroke:
            breaststrokeWorkouts.append(self)
        case .butterfly:
            butterflyWorkouts.append(self)
        case .freestyle:
            freestyleWorkouts.append(self)
            
        }
           
    }

}

var humanSwimmingOne: SwimmingWorkout = .init(distance: 15, time: 30, stroke: .butterfly)
humanSwimmingOne.save()
var resultArrayOne = humanSwimmingOne.butterflyWorkouts
print(resultArrayOne)

var humanSwimmingOTwo: SwimmingWorkout = .init(distance: 78, time: 300, stroke: .breaststroke)
humanSwimmingOTwo.save()
var resultArrayTwo = humanSwimmingOTwo.breaststrokeWorkouts
print(resultArrayTwo)
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 2 из 2
