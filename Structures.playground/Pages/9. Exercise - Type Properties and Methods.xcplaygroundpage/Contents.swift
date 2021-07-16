/*:
 ## Упражнение - свойства и методы типов
 
 Представьте, что у вас есть приложение, где пользователь должен пройти процедуру авторизации. У вас может быть структура `User`, аналогичная показанной ниже. Однако, в дополнение к хранению информации о конкретном пользователе, вы также хотите знать, какой из пользователей сейчас авторизован в приложении. Создайте свойство типа с именем `currentUser` в структуре `User` и присвойте ему объект `user` типа `User`, описывающий вас. Теперь вы можете получить доступ к текущему пользователю через структуру `User`. Выведите в консоль свойства объекта `currentUser`.
 */
/* struct User {                                             // Пользователь
    
    var currentUser: User = .init(userName: "Daniel", email: "curshetratatata@mail.ru", age: 29)
    
    var userName: String                                    // Имя пользователя
    var email: String                                       // e-mail
    var age: Int                                            // Возраст

}

var user: User = .currentUser
print(user) */
/*:
 Существуют и другие свойства и методы, связанные со структурой `User`, являющиеся хорошими кандидатами для свойства или метода типа. Например, метод для авторизации пользователя. Вернитесь к структуре `User` и создайте метод типа с именем `logIn(user:)`, где `user` имеет тип `User`. В теле метода, присвойте переданное значение пользователя свойству `currentUser`, и выведите сообщение с использованием имени пользователя `userName` с текстом о том, что пользователь авторизован.
 
 Вызовите метод `logIn(user:)` ниже и передайте ему экземпляр типа `User`, который вы присваивали свойству `currentUser` ранее. Обратите внимание, что будет выведено в консоли.
 */
struct User {               
    
    static var currentUser: User = .init(userName: "Daniel", email: "curshetratatata@mail.ru", age: 29)
    
    var userName: String
    var email: String
    var age: Int
    
    func logIn() {
    print("User \(userName) is logged in!")
    }
    
}

var userOne: User = .currentUser
userOne.logIn()

var userTwo: User = .init(userName: "Vasya", email: "batya@mail.sru", age: 18)
userTwo.logIn()
//: [Ранее](@previous)  |  страница 9 из 10  |  [Далее: упражнение для приложения — свойства и методы типов](@next)
