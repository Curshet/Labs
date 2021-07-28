/*:
 ## Упражнение - проваливающиеся инициализаторы
 
 Создайте структуру `Computer` с двумя свойствами, `ram` и `yearManufactured`, оба — типа `Int`.  Создайте проваливающийся инициализатор, который создаст экземпляр типа `Computer`, только если `ram` больше 0, а `yearManufactured` — больше 1970 и меньше, чем 2019.
 */
struct Computer {
    
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        
        guard (ram > 0) && (yearManufactured > 1970) && (yearManufactured < 2019) else { return nil }
        
        self.ram = ram
        self.yearManufactured = yearManufactured
        
    }
    
}
/*:
 Создайте два экземпляра типа `Computer?`, используя проваливающийся инициализатор.  Один экземпляр должен передать значения, которые приведут к созданию объекта, а при создании второго должен получиться `nil`.  Используйте синтаксис if-let, чтобы извлечь каждый из объектов типа `Computer?`, и напечатайте значения `ram` и `yearManufactured`, если объект их содержит.
 */
var hynix = Computer(ram: 2048, yearManufactured: 2018)
var samsung = Computer(ram: 4096, yearManufactured: 2021)
//: [Ранее](@previous)  |  страница 5 из 6  |  [Далее: упражнение для приложения - разминка или nil](@next)
