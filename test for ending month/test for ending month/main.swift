import Foundation

////Создать программу, которая посчитает количество пробелов в тексте и количество символов (15 баллов)
//
//
var string = "The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. It is a social species, forming groups called prides. A lion's pride consists of a few adult males, related females, and cubs."

func howManyTimes(input: String, count: Character) -> Int{
    var symbolCount = 0

    for symbol in input {
        if symbol == count {
        symbolCount += 1
    }
}
return symbolCount
}

print("количество символов в тексте равно \(string.count)")

print("---------------------------------")
print("Количество пробелов в тексте:")
print(howManyTimes(input: string, count: " "))





//Создать программу, которая вручную отсортирует числа, введенные используя readLine (15 баллов)




print("Введите любое число и нажмите Return\n(повторите эти действия сколько угодно раз)\nКаждый раз числа отсортируются от меньшего к большему")
var sortedArray: [Int] = []
var count = 100
while let string = Int(readLine()!), count != 0 {
    print(count)
    count -= 1
    sortedArray.append(string)
    sortedArray = sortedArray.sorted { $0 < $1}
    print(sortedArray)
}
print(sortedArray)




//Создать программу, которая сгруппирует слова, введенные в readLine по первой букве в отдельные массивы внутри одного массива (15 баллов)



print("Введите любое слово и нажмите Return\n(повторите это действие 5 раз):")
var totalArray: [[String]] = []
func addToArray(name: String){
    var found = false
    var array: [String] = []
    let first = name.first!
    for (index, item) in totalArray.enumerated(){
        for (index2, item2) in item.enumerated(){
            for item3 in item2{
                if item3 == first && index2 == 0 && found == false{
                    totalArray[index].append(name)
                    found = true
                    break
                }
            }
        }
    }
    if found == false{

        array.append(String(first))

        array.append(name)

        totalArray.append(array)


    }
}

let readline = readLine()!
let readline2 = readLine()!
let readline3 = readLine()!
let readline4 = readLine()!
let readline5 = readLine()!
addToArray(name: readline)
addToArray(name: readline2)
addToArray(name: readline3)
addToArray(name: readline4)
addToArray(name: readline5)



let sortedTotal = totalArray.sorted{$0.first! < $1.first!}



print(sortedTotal)
print("")
for i in sortedTotal{
    print("Буква \(i.first!). количество слов: \(i.count - i.count/2)")
}
