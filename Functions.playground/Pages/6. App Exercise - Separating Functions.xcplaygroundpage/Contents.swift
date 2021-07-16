/*:
 ## Упражнение для приложения — разделение функций
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Один из принципов, помогающих отлаживать и поддерживать код — это абстракция.  К примеру, в вашем фитнесс-приложении некоторые из функций были написаны так, что они как выполняли вычисления, так и печатали сообщения.  Довольно часто бывает нужно поменять либо формулу, либо сообщение.  Сделать это легче, если вы разделите вычисления и вывод собщений.
 
 В качестве примера, напишите функцию, которая выполняет только часть того, что делала ранее функция `pacing`.  Назовите новую функцию `calculatePace`.  Она должна принимать три аргумента типа `Double` с именами `currentDistance` (текущее расстояние), `totalDistance` (общее расстояние), и `currentTime` (текущее время), и возвращать значение типа `Double`, соответствующее времени, в которое пользователь достигнет финиша, основываясь на значениях текущего расстояния и времени.  Вызовите функцию несколько раз и напечатайте результаты.
 */
func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    
    let currentSpeed = currentDistance / currentTime
    
    return totalDistance / currentSpeed
    
}


//var time = calculatePace(currentDistance: 30.0, totalDistance: 70.0, currentTime: 15.0)

//print("С текущей скоростью Вы достигнете заданного расстояния через \(Int(time)) минут!")

//time = calculatePace(currentDistance: 6747.4747, totalDistance: 67448468.4747, currentTime: 575.4747)

//print("С текущей скоростью Вы достигнете заданного расстояния через \(Int(time)) минут!")
/*:
 Теперь напишите функцию с именем `pacing`, которая принимает четыре аргумента типа `Double` с названиями `currentDistance`, `totalDistance`, `currentTime` и `goalTime` (целевое время).  Функция должна также возвращать строку типа `String`, в которой будет содержаться сообщение для показа пользователю.  Функция должна вызывать `calculatePace`, передавать ей соответствующие значения, и запоминать возращаемое значение.  Функция затем должна сравнить возращённое значение и `goalTime`, и, если пользователь успевает, вернуть «Держите темп!», в противном случае вернуть «Вам нужно ускорить темп, чтобы успеть!».  Вызовите функцию и зафиксируйте результаты.
 */
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {

    let resultTime = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    
    var message = ""
    
    switch resultTime {
        
        case _ where goalTime >= resultTime:
            message = "Держите темп!"
        case _ where goalTime < resultTime:
            message = "Вам нужно ускорить темп, чтобы успеть!"
        default:
            break
        
    }

    return message
}

let one = pacing(currentDistance: 90, totalDistance: 200, currentTime: 9, goalTime: 20)
print(one)
//: [Ранее](@previous)  |  страница 6 из 6
