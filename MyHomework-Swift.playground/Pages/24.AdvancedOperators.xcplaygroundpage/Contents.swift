extension UInt8 {
    
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

var a: UInt8 = 57
a.binary()

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

a = 0b00111001
a.binary()
(5 as UInt8).binary()

a = a + 0b00000101
a.binary()
(4 as UInt8).binary()
a = a - 0b00000100
a.binary()

















