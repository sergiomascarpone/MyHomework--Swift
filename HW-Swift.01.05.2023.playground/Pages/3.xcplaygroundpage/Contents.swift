/*
Домашка:
1. Создать tuple: максимальное количество отжиманий, подтягиваний и приседаний, которое вы можете сделать,  tuple должен быть параметризированным, вывести в консоль.
2.  Вывести каждый параметр отдельной функцией, чтобы у каждого параметра было название параметра
3. Создать такой же tuple для другого человека и поменять значения с первым, не используя равенство между целым tuple
4*.  Посчитать разницу между двумя tuple и сохранить результат в другом tuple
*/

var myTuple = (maxPushUps: 30, maxPullUps: 10, maxSquats: 30)

print(myTuple)
print("My maximum number of push-up: \(myTuple.maxPushUps)")
print("My maximum number of pull-ups: \(myTuple.maxPullUps)")
print("My maximum number of squats: \(myTuple.maxSquats)")

var myBestFriendTuple = (maxPushUps: 300, maxPullUps: 100, maxSquats: 200)

let justTuple = (maxPushUps: myTuple.maxPushUps, maxPullUps: myTuple.maxPullUps, maxSquats: myTuple.maxSquats)
myTuple.maxPushUps = myBestFriendTuple.maxPushUps
myTuple.maxPushUps = myBestFriendTuple.maxPullUps
myTuple.maxSquats = myBestFriendTuple.maxSquats

myBestFriendTuple.maxPushUps = justTuple.maxPushUps
myBestFriendTuple.maxPullUps = justTuple.maxPullUps
myBestFriendTuple.maxSquats = justTuple.maxSquats
print("My new max: \(myTuple)")

let deltaTuple = (deltaPushUps: myTuple.maxPushUps - myBestFriendTuple.maxPushUps, deltaPullUps: myTuple.maxPullUps - myBestFriendTuple.maxPullUps, deltaSquats: myTuple.maxSquats - myBestFriendTuple.maxSquats)
print(deltaTuple)


