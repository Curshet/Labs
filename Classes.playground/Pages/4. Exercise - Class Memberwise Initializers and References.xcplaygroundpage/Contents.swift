/*:
 ## Упражнение - Поэлементные инициализаторы класса и ссылки
 
 - Объяснение: упражнения ниже базируются на игре, в которой космический корабль должен избегать препятствий в космосе.  Корабль находится в нижней части координатной системы и может двигаться только налево и направо.  Препятствия «падают» сверху вниз.  На протяжении всех упражнений мы будем создавать классы, представляющие разные типы кораблей, которые могут быть использованы в игре.  Базовый класс `Spaceship` и подклассы `Fighter`и `ShieldedShip` определёны ниже.  Вам они понадобятся для завершения упражнений.
 */
class Spaceship {
    
    var name: String                                    // название
    var health: Int                                     // жизнеспособность
    var position: Int                                   // расположение

    func moveLeft() {
        position -= 1                                   // сдвигает корабль влево на 1
    }
    
    func moveRight() {
        position += 1                                   // сдвигает корабль вправо на 1
    }
    
    func wasHit() {
        health -= 5                                     // столкновение уменьшает жизнеспособность
    }
    
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
}

class Fighter: Spaceship {
    
    var weapon: String                                  // вооружение
    var remainingFirePower: Int                         // боеприпасы
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no fire!")                  // у вас не осталось боеприпасов
        }
    }
    
    init(weapon: String, remainingFirePower: Int, spaceShip: Spaceship) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: spaceShip.name, health: spaceShip.health, position: spaceShip.position)
    }
    
}

class ShieldedShip: Fighter {
    
    var shieldStrength: Int                               // мощь защиты

    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }

    init(shieldStrength: Int, fighter: Fighter) {
        self.shieldStrength = shieldStrength
        super.init(weapon: fighter.weapon, remainingFirePower: fighter.remainingFirePower, spaceShip: .init(name: fighter.name, health: fighter.health, position: fighter.position))
    }
    
}
/*:
 Обратите внимание, что определение каждого класса выше выдаёт ошибку «У класса нет конструкторов (инициализаторов)».  В отличие от структур, у классов нет поэлементных инициализаторов, так как стандартные поэлементные конструкторы не всегда хорошо работают с наследственностью.  Вы можете избавиться от ошибок, указав значения по умолчанию для всех хранимых свойств, но более общепринятой практикой является определением собственных инициализаторов.  Вернитесь к определению `Spaceship` и добавьте конструктор, который в качестве аргументов принимает каждое свойство `Spaceship`, и устанавливает их соответствующим образом.
 
 Создайте экземпляр класса `Spaceship` с именем `falcon`.  Используйте поэлементный инициализатор, который вы только что создали.  Название корабля должно быть "Сокол".
 */
let falcon: Spaceship = .init(name: "Сокол", health: 100, position: 2)
/*:
 Написание конструкторов для подклассов может быть непростой задачей.  Ваш инициализатор должен не только установить свойства, объявленные в подклассе, но и присвоить значения всем не инициализированным свойствам своих классов-предков.  Вернитесь к определению класса `Fighter` и напишите конструктор, который в качесте аргументов принимает значения всех свойств `Fighter` и всех свойств `Spaceship`.  Установите свойства нужным образом.  (Подсказка: вы можете вызвать инициализатор суперкласса с помощью конструкции `super.init` *после* инициализации всех свойств подкласса).
 
 Создайте экземпляр класса `Fighter` под названием `destroyer`.  Используйте поэлементный инициализатор, который вы только что создали.  Имя корабля должно быть "Разрушитель".
 */
let destroyer: Fighter = .init(weapon: "Gun", remainingFirePower: 50, spaceShip: .init(name: "Разрушитель", health: 100, position: 2))
destroyer.name
/*:
 Теперь добавьте конструктор в класс `ShieldedShip`, который в качестве аргументов принимает все свойства классов `ShieldedShip`, `Fighter` и `Spaceship`, и инициализирует свои свойства соответствующим образом.  Помните, что вы можете вызвать инициализатор класса `Fighter` с помощью `super.init`.
 
 Создайте экземпляр класса `ShieldedShip` с именем `defender`.  Используя только что созданный вами поэлементный инициализатор, присвойте кораблю название "Защитник".
 */
let defender: ShieldedShip = .init(shieldStrength: 100, fighter: .init(weapon: "Gun", remainingFirePower: 35, spaceShip: .init(name: "Защитник", health: 100, position: 3)))
defender.name
print(defender.name)
/*:
 Создайте новый экземпляр класса `Spaceship` под именем `sameShip` и установите его равным `falcon`.  Выведите в консоль расположение `sameShip` и `falcon`, затем вызовите `moveLeft()` для `sameShip` и снова выведите в консоль позиции `sameShip` и `falcon`.  Обе ли позиции изменились?  Почему?  Если оба объекта были бы структурами, а не классами, был бы результат таким же?  Ответьте с помощью комментрания в коде.
 */
var sameShip: Spaceship = .init(name: "Samolyot", health: 100, position: 7)
sameShip = falcon
print(sameShip.position)
print(falcon.position)
sameShip.moveLeft()
print(sameShip.position)
print(falcon.position)                                      //значения меняются по причине Reference Type (актуально для
                                                            //классов, но не для структур, которые являются Value Type)
/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 4 из 4
