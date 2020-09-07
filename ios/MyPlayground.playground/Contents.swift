//let numbers = [45, 73, 195, 53]
//var result = [Int]()
//// OR
////var result:[Int] = []
//
//for i in 0 ... numbers.capacity-2 {
//    result.append(numbers[i] * numbers[i+1])
//}
//
//print(result)
//
//
//print(Int.random(in: 1 ..< 3))
//print(Int.random(in: 1 ... 3))
//
//print(Float.random(in: 1 ..< 3))
//print(Float.random(in: 1 ... 3))


struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, people: [String], stats: [String: Int]) {
//        print("initializing...")
        
        self.name = name // specify with `self.`
        citizens = people
        resources = stats
    }
    
    func fortify() {
        print("increase defences!")
    }
}


var myTown = Town(name:"lekki",
                  people:["Rob", "Charlie"],
                  stats:["Grain":100, "Ore":42, "Wool":75])

print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain")
print(myTown.citizens)

myTown.citizens.append("Tomi")
print(myTown.citizens.count)

myTown.fortify()



