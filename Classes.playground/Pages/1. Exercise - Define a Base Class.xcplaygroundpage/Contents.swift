/*:
 ##  Упражнение - Определение базового класса
 
 - Объяснение: упражнения ниже базируются на игре, в которой космический корабль должен избегать препятствий в космосе.  Корабль находится в нижней части координатной системы и может двигаться только налево и направо.  Препятствия «падают» сверху вниз.  На протяжении всех упражнений мы будем создавать классы, представляющие разные типы кораблей, которые могут быть использованы в игре.
 
 Создайте класс `Spaceship` (космический корабль) с тремя переменными свойствами: `name` (название), `health` (жизнеспособность) и `position` (расположение).  Значение по умолчанию для `name` должно быть пустой строкой.  `health` изначально должно быть равно 100.  `position` должно быть представлено целым числом `Int`, где отрицательные значения означают, что корабль располагается слева от центра, а положительные — справа.  Значение по умолчанию для `position` должно быть равно 0.
 */
/* class Spaceship {
 
    var name = ""
    var health = 100
    var position = 0
 
} */

/*:
 Создайте константу `let` с именем `falcon` («сокол») и присвойте ей экземпляр `Spaceship`.  После инициализации, сделайте `name` равным "Сокол".
 */
/* class Spaceship {
 
    var name = ""
    var health = 100
    var position = 0
 
}

let falcon: Spaceship = .init()
falcon.name = "Сокол" */
/*:
 Вернитесь к определению класса `Spaceship` и добавьте в него метод `moveLeft()`.  Этот метод должен сдвигать расположение корабля влево на единицу.  Добавьте аналогичный метод `moveRight()`, сдвигающий корабль вправо.  После определения этих методов, используйте их для перемещения `falcon` дважды влево, а затем один раз вправо.  Выведите в консоль расположение `falcon` после каждого его изменения.
 */
/* class Spaceship {

    var name = ""
    var health = 100
    var position = 0

}

let falcon: Spaceship = .init()
falcon.name = "Сокол" */

/*:
 Напоследок классу `Spaceship` в данном примере требуется метод, который вызывается в случае столкновения корабля с препятствием.  Снова вернитесь к определению класса `Spaceship` и добавьте метод `wasHit()`, уменьшающий жизнеспособность корабля на 5.  Если `health` меньше или равна 0, метод должен вывести в консоль "Извините. Ваш корабль разрушился. Хотите сыграть снова?".   После определения данного метода, вызовите его для экземпляра `falcon` и выведите в консоль значение `health`.
 */
class Spaceship {

    var name = ""
    var health = 100
    var position = 0
    
    func wasHit() {
        
        health -= 5
        
        if health <= 0 {
            print("Извините, Ваш корабль разрушился! Хотите сыграть снова?")
        }
        
    }
    
}

let falcon: Spaceship = .init()
falcon.name = "Сокол"
falcon.wasHit()
falcon.health

//: страница 1 от 4  |  [Далее: Упражнение - создание класса-наследника](@next)
