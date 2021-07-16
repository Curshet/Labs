/*:
 ## Упражнение для приложения — пользователи и дистанция
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Большинству приложений необходимо иметь структуру данных для хранения информации о пользователе. Создайте структуру `User`, свойства которой будут хранить базовую информацию о пользователе. Как минимум, она должна содержать информацию об имени, возрасте, росте, весе и уровне активности пользователя. Вы можете хранить `name` в виде `String`, `age` в виде `Int`, `height` и `weight` в виде `Double` и `activityLevel` в виде `Int`, который может принимать значения 1-10 от самого низкого до самого высокого уровня активности. Реализуйте данную структуру ниже.
 */
struct User {
    
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: EnumLevel
     
    enum EnumLevel: Int {
        case one = 1
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
    }
    
}
/*:
 Создайте экземпляр переменной типа `User` и дайте ему своё имя. Используйте поэлементный инициализатор для передачи информации о себе. Затем выведите описание экземпляра вашей переменной типа `User`, используя её свойства.
 */
let userOne: User = .init(name: "Vasya", age: 25, height: 175, weight: 76, activityLevel: .five)
print("User's name is \(userOne.name), age: \(userOne.age), height: \(userOne.height), weight: \(userOne.weight), activityLevel: \(userOne.activityLevel.rawValue)")
/*:
 В предыдущих упражнениях для приложения, вы представляли расстояние в виде обычного числа. Однако, оно может быть представлено с помощью различных единиц измерения. Создайте структуру `Distance`, которая будет хранить дистанцию в различных системах измерения. Как минимум, у вас должно быть свойство `meters` (метры) и свойство `feet` (футы). Создайте собственные инициализаторы (конструкторы), соответствующие каждому из свойств (например, если у вас только два свойства для метров и футов, у вас должно быть два конструктора), которые будут принимать дистанцию в одной системе измерения и присваивать корректные значения всем свойствам. Подсказка: *1 метр = 3.28084 фута*.
 
 - Пример: если вы используете инициализатор для метров и передаёте ему дистанцию 1600, конструктор должен установить `meters` равным 1600, а `feet` — равным 5249.344.
 */
struct Distance {
    
    var feet = Double()
    var meters = Double()
    var santimeters = Double()
    var millimeters = Double()
    
    init(feetValue: Double) {
        feet = feetValue
        meters = feet / 3.28084
        santimeters = meters * 100
        millimeters = santimeters * 10
    }
    
    init(metersValue: Double) {
        feet = metersValue * 3.28084
        meters = metersValue
        santimeters = meters * 100
        millimeters = santimeters * 10
    }
    
    init(santimetersValue: Double) {
        feet = santimetersValue * 328.084
        meters = santimetersValue / 100
        santimeters = santimetersValue
        millimeters = santimeters * 10
    }
    
    init(millimetersValue: Double) {
        feet = millimetersValue * 3280.84
        meters = millimetersValue / 1000
        santimeters = millimetersValue / 10
        millimeters = millimetersValue
    }
    
}
/*:
 Создайте экземпляр структуры `Distance` с именем `mile`. Используя инициализтор для метров, установите её значение равным 1600. Выведите в консоль свойство для футов и удостоверьтесь, что оно равно 5249.344.
 */
let mile: Distance = .init(metersValue: 1600)
print(mile.feet)
/*:
 Создайте ещё один экземпляр `Distance` и присвойте ему произвольное значение. Удостовертесь, что оба свойства установлены корректно.
 */
let mileTwo: Distance = .init(feetValue: 45)
print(mileTwo.santimeters)
//: [Ранее](@previous)  |  страница 4 из 10  |  [Далее: упражнение — методы](@next)
