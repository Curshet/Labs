/*:
 ## Упражнение для приложения — функции разминки
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Ниже создана структура `RunningWorkout`. Добавьте в неё метод под названием `postWorkoutStats`, выводящий в консоль информацию о разминке. Затем создайте экземпляр структуры `RunningWorkout` и вызовите `postWorkoutStats()`.
 */
struct RunningWorkout {                                     // Беговая разминка
    
    var distance: Double                                    // Пройденное расстояние
    var time: Double                                        // Потраченное время
    var elevation: Double                                   // Изменение высоты над уровнем моря
    
    func postWorkoutStats() {
        print("Your distance is \(distance), time: \(time), elevation: \(elevation)")
    }
    
}

let info: RunningWorkout = .init(distance: 70, time: 35, elevation: 10)
info.postWorkoutStats()
/*:
 Далее определена структура `Steps`, отслеживающая данные по количеству шагов. В ней есть целевое количество шагов на день и количество шагов, проделанное к настоящему моменту. Создайте в этой структуре метод `takeStep`, который увеличивает `steps` на единицу. Затем создайте экземпляр типа `Steps` и вызовите `takeStep()`. Выведите в консоль значение  свойства `steps` до и после вызова метода.
 */
struct Steps {                                               // Шаги
    
    var steps: Int                                           // Текущее количество шагов за сегодня
    var goal: Int                                            // Целевое количество шагов на день
    
    mutating func takeStep() {
        steps += 1
    }
    
}

var steps: Steps = .init(steps: 500, goal: 350)
print(steps.steps)
steps.takeStep()
print(steps.steps)
//: [Ранее](@previous)  |  страница 6 из 10  |  [Далее: упражнение — вычислимые свойства и наблюдатели свойства](@next)
