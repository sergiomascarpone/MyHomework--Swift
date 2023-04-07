extension UInt8 {
//extension Int8 {
    
    func binary() -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}
/*
//смысл работы математических операций
var a: Int8 = 57
a.binary()

a = 0b01111111
a.binary()
a = a &+ 1
a.binary()
a = a &+ 1
a.binary()


a = 0
a = a - 1
a.binary()
a = a - 1
a.binary()

a = 0b00100001
//a = a << 2
a = a &* 4
a.binary()

*/
//var a: UInt8 = 57
/*
0b11111111
0xff
255
*/

/*
a = a + 2
a.binary()
a = a + 3
a.binary()
*/

/*
a = 0b00111001
a.binary()
(5 as UInt8).binary()

a = a + 0b00000101
a.binary()
(4 as UInt8).binary()
a = a - 0b00000100
a.binary()

//a = a * 2
//a = a << 2 //происходит сдвиг влево и число пропадает
//a = a >> 2 //происходит сдвиг вправо и число пропадает
a = a * 4
a = a &* 2 //работа с шивтами
a.binary()

a = 0b11111111
a = a &+ 1

a = 0b00000000
a = a &- 1
*/

//работа битовых операций
var b: UInt8 = 0b11100001
var a: UInt8 = 0b00110011

//сложение по битам с оператором "или" ( | )
a.binary()
b.binary()
(a | b).binary()

//умножение по битам с оператором "и" ( & )
a.binary()
b.binary()
(a & b).binary()

//сумма по модули, исключающая "или" ( ^ )
a.binary()
b.binary()
(a ^ b).binary()

//инверсия ( ~ )
a.binary()
(~a).binary()

b = 0b00010000
a.binary()
b.binary()
(a & b).binary()





