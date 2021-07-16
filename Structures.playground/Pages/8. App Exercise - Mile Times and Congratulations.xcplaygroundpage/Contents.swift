/*:
 ## Упражнение для приложения — среднее время и ободряющие сообщения
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Структура `RunningWorkout` ниже содержит информацию о беговых разминках ваших пользователей. Вы решили добавить информацию о среднем времени на милю. Добавьте вычислимое свойство `averageMileTime`, использующее `distance` и `time` для расчёта среднего времени пользователя на милю. Предположите, что `distance` хранит расстояние в метрах и миля — это 1600 метров.
 
 Создайте экземпляр `RunningWorkout` и выведите в консоль значение свойства `averageMileTime`. Удостоверьтесь, что оно работает корректно.
 */
struct RunningWorkout {                                         // Беговая разминка
    
    var distance: Double                                        // Пройденное расстояние
    var time: Double                                            // Потраченное время
    var elevation: Double                                       // Изменение высоты над уровнем моря
    
    var averageMileTime: Double {
         time / distance
    }
    
}

let info: RunningWorkout = .init(distance: 1600, time: 4800, elevation: 16)
info.averageMileTime
/*:
 В других упражнениях для приложения, вы ободряли пользователей сообщениями на основе того, как много шагов они прошли. Удобное место для проверки необходимости вывода такой информации — это наблюдатели свойств.
 
 В структуре `Steps` ниже, добавьте наблюдатель `willSet` к свойству `steps`, который будет проверять, достигло ли новое значение `newValue` цели, и, в случае достижения, выводить в консоль поздравительное сообщение. Создайте экземпляр типа `Steps` со значением `steps`, равным 9999, а `goal` — равным 10000, затем вызовите `takeStep()` и посмотрите, выводится ли ваше сообщение.
 */
struct Steps {
    
    var goal: Int
    
    var steps: Int {
        willSet {
            (newValue > steps) ? print("Congratulations! Your have new personal record!") : print("You have no changes!")
        }
    }
    
    mutating func takeStep() {
        steps += 1
    }
}

var results: Steps = .init(goal: 10000, steps: 9999)
results.takeStep()
//: [Ранее](@previous)  |  страница 8 из 10  |  [Далее: упражнение — свойства и методы типов](@next)
