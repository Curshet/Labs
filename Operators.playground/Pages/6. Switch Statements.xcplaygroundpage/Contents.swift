/*:
 ## Упражнение - инструкция switch
 
 Представьте себя в футбольной команде в конце сезона.  Создайте константу `leaguePosition` (место в лиге) со значением 1.  Используя инструкцию `switch`, напечатайте "Чемпионы!", если `leaguePosition` равна 1, "Серебро", если значение равно 2, "Бронза", если значение — 3 и "Плохой сезон!" во всех остальных случаях.
 */
let leaguePosition = 1

switch leaguePosition {
    
    case 1:
        print("Чемпионы")
    case 2:
        print("Серебро")
    case 3:
        print("Бронза")
    default:
        print("Плохой сезон!")
    
}
/*:
 Напишите новую инструкцию `switch`, которая выводит "Призовое место", если `leaguePosition` лежит в диапазоне 1 — 3.  В противном случае, напечатайте "Медалей не получили".
 */
switch leaguePosition {
    
    case 1...3:
        print("Призовое место")
    default:
        print("Медалей не получили")
    
}
//: [Ранее](@previous)  |  страница 6 из 9  |  [Далее: Упражнение для приложения - Зоны пульса](@next)
