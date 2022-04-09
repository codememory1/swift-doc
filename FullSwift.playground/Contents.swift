import UIKit

/**__=-=-=-=-=-=-=-=-=-=-ПЕРЕМЕННЫЕ И КОНСТАНТЫ-=-=-=-=-=-=-=-=-=-=__**/
var var1 = "Переменная 1"
var var2: String = "Переменная 2 с типом"

let const1 = "Константа 1"
let const2: String = "Константа 2 с типом"


/**__=-=-=-=-=-=-=-=-=-=-СТРОКИ-=-=-=-=-=-=-=-=-=-=__**/
var str1: String = """
Многострочный
Текст
"""
var str2: String = "123" + str1 // Конкатинация строк(склейка двух и более строк)
var str3: String = "str3 \(str2) \(str1)" // Конкатинация


/**__=-=-=-=-=-=-=-=-=-=-ТИПЫ ДАННЫХ-=-=-=-=-=-=-=-=-=-=__**/
var type1: Int = 123 // Целые числа
var type2: Double = 10.10 // Числа с точкой
var type3: Float = 10.10 // Числа с точкой
var type4: String = "abc" // Строка
var type5: Bool = true // Может содердать только true, false
var type6: Character = "r" // Может иметь только один символ
var type7: Any = 12 // Любой тип
//var type8: AnyObject = MyObject() // Любой объект


/**__=-=-=-=-=-=-=-=-=-=-ОПЦИОНАЛЬННЫЙ ТИП-=-=-=-=-=-=-=-=-=-=__**/
var optional1: Int? = 123 // Может содержать как целые числа так и значение nil
var optional2: Int = optional1! // Развертывание опционала
var optional3: Int! = optional1 // Автоматическое развертывание опционала


/**__=-=-=-=-=-=-=-=-=-=-АЛИАС ТИПА-=-=-=-=-=-=-=-=-=-=__**/
typealias MyInt = Int

var myIntVar: MyInt = 10

/**__=-=-=-=-=-=-=-=-=-=-ВСПОМОГАТЕЛЬННЫЕ ФУНКЦИИ И СВОЙСТВА-=-=-=-=-=-=-=-=-=-=__**/
var arrayForFunc: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var dictionaryForFunc: [Int: String] = [1: "Value1", 2: "Value3", 3: "Value3"]

type(of: type1) // Узнать тип переменной

var1.isEmpty // Проверить на пустоту
var1.lowercased() // Перевести строку в нижний регистр
var1.uppercased() // Перевести строку в верхний регистр
var1.first // Получить первый символ
var1.last // Получить последний символ
arrayForFunc.append(123) // Добавление одного значения
arrayForFunc.append(contentsOf: [11, 12, 13]) //  Добавление несколько значений
arrayForFunc.count // Кол-во значений
arrayForFunc.remove(at: 0) // Удалить первый элемент
arrayForFunc.reverse() // Перевернуть
arrayForFunc.min() // Минимальное значение
arrayForFunc.max() // Максимальное значение
dictionaryForFunc.contains { key, value in
    return key == 1 && value == "Value1"
} // Проверить существование
dictionaryForFunc.updateValue("New Value", forKey: 3)


/**__=-=-=-=-=-=-=-=-=-=-TUPLE-=-=-=-=-=-=-=-=-=-=__**/
var tuple1: (name: String, age: Int) = ("Vova", 10) // С объявлением типов
var tuple2 = (name: "Danil", age: 123) // Без объявления типов
var tuple3 = ("Yura", 100, 555) // Без указания ключей
var (name, age, num) = ("Dmitry", 10, 40) // Кортеж с несколькими переменными

// Получение значение
tuple1.name
tuple2.age
tuple3.1

/**__=-=-=-=-=-=-=-=-=-=-ОПЕРАТОРЫ-=-=-=-=-=-=-=-=-=-=__**/

/**_=-=-=-=-=-=-=-=-=-=-БИНАРННЫЕ-=-=-=-=-=-=-=-=-=-=_**/
    // + Прибавление
    // - Вычитание
    // * Умножение
    // / Деление
    // % Деление по модулю

/**_=-=-=-=-=-=-=-=-=-=-УНАРНЫЕ-=-=-=-=-=-=-=-=-=-=_**/
    // -var Равносильно var - 1
    // +var Равносильно var + 1
    

/**_=-=-=-=-=-=-=-=-=-=-СОСТАВНЫЕ-=-=-=-=-=-=-=-=-=-=_**/
    // a += 1 Равносильно a = a + 1
    // a -= 1 Равносильно a = a - 1
    // a *= 1 Равносильно a = a * 1
    // a /= 1 Равносильно a = a / 1
    // a %= 1 Равносильно a = a % 1

/**_=-=-=-=-=-=-=-=-=-=-УСЛОВННЫЕ-=-=-=-=-=-=-=-=-=-=_**/
    // == Равно
    // != Не равно
    // >  Больше
    // <  Меньше
    // >= Больше или равно
    // <= Меньше или равно

    // Проверить ссылается ли два указателя на один конкретный объект
    // === Тожденственный
    // !== Не то

/**_=-=-=-=-=-=-=-=-=-=-ТЕРНЫРНЫЙ-=-=-=-=-=-=-=-=-=-=_**/
    // ?? Проверка на nil
    // ? : Условный true false

/**_=-=-=-=-=-=-=-=-=-=-ТЕРНЫРНЫЙ-=-=-=-=-=-=-=-=-=-=_**/
    // !  Не
    // && И
    // || Или


/**__=-=-=-=-=-=-=-=-=-=-ДИАПАЗОН-=-=-=-=-=-=-=-=-=-=__**/
var range1 = 0...10 // Диапазон значений от 0 до 10
var range2 = 0..<10 // Диапазон значение от 0 до 9
var range3 = ...15 // От минимально до 15
// var range4 = 0... // От 0 до бесконечности


/**__=-=-=-=-=-=-=-=-=-=-МАССИВЫ-=-=-=-=-=-=-=-=-=-=__**/
// 1. Значение одно типа
// 2. Могут быть одинаковые значения

var array1 = Array<Int>(arrayLiteral: 1, 2, 3, 4)
var array2: Array<Int> = [1, 2, 3, 4] // С явным типов

// Сокращенный вид
var array3 = [1, 2, 3, 4]
var array4: [Int] = [1, 2, 3, 4] // С явным типом

// Пустая инициализация
var array5 = Array<Int>()
var array6 = [Int]()

var array7: [Int] = Array(repeating: 4, count: 5) // Создать массив с n одинаковым значением
var array8: [Int] = [1, 2] + [3, 4] + [5, 6] // Merge массивов

var array9 = [1, 2, 3] as [Double] // Изменить тип значений
var array10 = [1, 2 as Float, 3] // Изменить тип значения

array8[0] // Получение первого элемента
array8[5] = 7 // Изменение значения элемента
array8 += [000, 999] // Добавление массива к массиву


/**__=-=-=-=-=-=-=-=-=-=-МНОЖЕСТВА-=-=-=-=-=-=-=-=-=-=__**/
// 1. Имеет уникальные значения
// 2. Нельзя обратится к конкретному элементу

var set1: Set = [1, 2, 3, 4, 5]
var set2: Set = [1, 2, 1] // Последний 1 пропадает
var set3: Set<String> = []
var set4 = Set<String>()



/**__=-=-=-=-=-=-=-=-=-=-СЛОВАРИ-=-=-=-=-=-=-=-=-=-=__**/

var dictionry1: [Int: String] = [:]
var dictionry2 = Dictionary<Int, String>()

var dictionary3: [String: String] = ["name": "Danil", "surname": "Qwerty"]
var dictionary4: [Int: [String: String]] = [0: ["key1": "Value1", "key2": "Value2"]]
var dictionary5: Dictionary<Int, String> = Dictionary(dictionaryLiteral: (1, "Value1"), (2, "Value2"))

// Изменение
dictionary3["name"] = "New Name"
dictionary3

// Получение
dictionary4[0]
dictionary4[0]!["key1"]
dictionary3["name"]


/**__=-=-=-=-=-=-=-=-=-=-SWITCH-=-=-=-=-=-=-=-=-=-=__**/
var switch1: Int = 1
var switch2: Int = 8

switch switch1 {
case 1:
    print("switch1 == 1")
case 10:
    print("Switch == 10")
    
default:
    print("switch !== не одному из кейсов")
}

// Switch с доп., условием на кейсе
switch switch2 {
case 8 where switch2 % 2 == 0:
    print("switch2 == 8 и делится на 2")
default:
    print("switch2 != 8 и не делится на 2")
}



/**__=-=-=-=-=-=-=-=-=-=-УСЛОВИЯ-=-=-=-=-=-=-=-=-=-=__**/

var if1: Int = 1
var if2: String = "if2"
var if3: Int = 540

if if1 == 1 {
    print("if1 == 1")
}

if if2 == "if2" && if1 == 1 {
    print("if2 == if2 и if1 == 1")
}

if if3 == 100 {
    print("if3 == 100")
} else if if3 == 540 {
    print("if3 == 540")
} else {
    print("if3 != 100 и if3 != 540")
}


/**__=-=-=-=-=-=-=-=-=-=-GUARD-=-=-=-=-=-=-=-=-=-=__**/
func funcForGuard() -> Void {
    guard 0 > 10 else {
        print("else guard")
        return
    }
}
funcForGuard()

// Равносильно такому условию
func funcGuardAsIf() -> Void {
    if 0 < 10 {
        print("func guard as if")
    }
}



/**__=-=-=-=-=-=-=-=-=-=-ЦИКЛЫ-=-=-=-=-=-=-=-=-=-=__**/
var for1: [Int] = [1, 2, 3, 4]

// Перебор массива
for for1V in for1 {
    print("for1: \(for1V)")
}

// Перебор диапазона
for v in 5..<10 {
    print("Range value: \(v)")
}

// Перебор по диапазоны с доп., условием на каждой итерации
for v in 0...10 where v % 2 == 0 {
    print("For with where: \(v)")
}

var while1: Int = 0
var while2: Int = 10

while while1 < 10 {
    print("while1: \(while1)")
    
    while1 += 1
}

//  С несколькими условиями
while while2 < 20, while2 % 2 == 0 {
    print("while2: \(while2)")
    
    while2 += 1
}

var repeatWhile1: Int = 0

// Данный цикл выполняется минимум 1 раз
repeat {
    repeatWhile1 += 1
    
    print("RepeatWhile1: \(repeatWhile1)")
} while repeatWhile1 < 5



/**__=-=-=-=-=-=-=-=-=-=-ФУНКЦИИ-=-=-=-=-=-=-=-=-=-=__**/

func func1() -> Void {
    print("Func1 без возврата")
}

/**_Функция с параметами_**/
// name      Имя внешнего параметра
// funcName  Имя которое будет использоваться внутри
// _         Указывает на то, что имя параметра указывать не нужно, при вызове функции
func func2(name funcName: String, _ age: Int) -> Void {
    print("Func2: funcName = \(funcName), age = \(age)")
}

// Возврат значения
func func3(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

// Если нужно дать одно и тоже имя для внешнего и внутренего параметра
func func4(names: Array<String>) -> Void {
    for name in names {
        print("Func4: name = \(name)")
    }
}

// Использование кортежов
func func5(tuple: (name: String, age: Int), tuple2: (Int, String)) -> (name: String, age: Int) {
    return (
        name: tuple.name + tuple2.1,
        age: tuple.age + tuple2.0
    )
}

// Значения по умолчанию для аргументов
func func6(_ num1: Int, _ num2: Int = 10) -> Void {
    print("Func6: num1 + num2 = \(num1 + num2)")
}

// Вариативнный параметр(может только быть один и в самом конце)
func func7(_ nums: Int...) -> Void {
    for n in nums {
        print("Func7: \(n)")
    }
}

// Можно создать несколько функций с одинаковыми именами, но они должны чем-то отличаться
func func7(num: Int) -> Int {
    return num
}

// Сквознные параметры(изменить значение параметра)
// По умолчанию, все параметры являются константами
func func8(value: inout Int) {
    value = 10
}

var varForFunc8: Int = 5 // Имеет новое значение 10

func8(value: &varForFunc8) // Передаем ссылку

// Вызов функции
func1()
func2(name: "Danil", 100)
func3(10, 10)
func4(names: ["Danil1", "Danil2"])
func5(tuple: (name: "Danil", age: 80), tuple2: (111, "222"))
func6(5)
func7(1, 2, 3, 4)
print(func7(num: 10))


/**__=-=-=-=-=-=-=-=-=-=-CLOSURE-=-=-=-=-=-=-=-=-=-=__**/
/**
 { (params) -> retun type
    in
        statements
 }
 */
var closureVar1: (Int, Int) -> Void = { num1, num2 in
    print("closureVar1: \(num1 + num2)")
}

closureVar1(10, 15)

func closure1(a: Int, _ handler: (Int) -> Int) -> Void {
    print("Closure1: \(handler(a))")
}

func closure2() -> () -> Int {
    func closure21() -> Int {
        return 123
    }
    
    return closure21
}

func closure3(name: String, handler: (String) -> String) -> Void {
    print(handler(name))
}

func funcForFunc3(str: String) -> String {
    return str;
}

closure1(a: 10) {(num) -> Int in
    return num * 2
};
closure2()
closure3(name: "closure3 1", handler: {(str: String) -> String in
    return str;
});
closure3(name: "closure3 2", handler: funcForFunc3)
closure3(name: "closure3 3", handler: {(str) in str})
closure3(name: "closure3 4", handler: ({$0}))

// Если в функции замыкание идет последним параметром
closure3(name: "closure3 5") {(str: String) -> String in
    return str
}
closure3(name: "closure3 6") {str -> String in
    return str
}
closure3(name: "closure3 7") {str in
    return str
}
closure3(name: "closure3 8") {str in str}
closure3(name: "closure3 9") {$0}



/**__=-=-=-=-=-=-=-=-=-=-ENUM-=-=-=-=-=-=-=-=-=-=__**/
enum Enum1 {
    case name
    case surname
    case date, time // Можно через запятую
}

enum Enum2 {
    case car
    case moto
    case other
}

let enum2Value = Enum1.name

switch enum2Value {
case .name:
    print("Enum1 switch = name")
case .time:
    print("Enum1 switch = time")
default:
    print("Enum1 switch = default")
}

func funcForEnum1(enum1: Enum1) -> Enum2 {
    switch enum1 {
        case .name:
            return .car
        case .date:
            return .moto
        default:
            return .other
    }
}

print(funcForEnum1(enum1: .name))

// Типы для значений кейсов
enum ItemEnum3 {
    case table(String, Int) // Значение String и Int
    case phone(Int) // Значение Int
}

let itemEnum3Table = ItemEnum3.table("Большой стол", 8)

switch itemEnum3Table {
case let .table(name, num): // Если все переменные let или var, то ключевое слово можно указать перед кейсом
    print("Стол с именем: \(name) и с кол-во ножками: \(num)")
case .phone(let phone):
    print("Номер телефона: \(phone)")
}

// Значение по умолчанию, но тип значений должен быть одним
enum Enum4: String {
    case danil = "Данил"
    case vova = "Вова"
}

// Получение кейса
enum Enum5: Int {
    case one = 1
    case two = 2
    case three
    case four
}

// Инициализатор может вернуть как и nil так и значение
Enum5.init(rawValue: 1)!
Enum5.init(rawValue: 4)! //  Если у данного кейса нет значения, значение будет увеличенно по отоношению предедущего кейса
// Enum5.init(rawValue: 10)! // Ошибка
Enum5.init(rawValue: 20) // nil



/**__=-=-=-=-=-=-=-=-=-=-ООП-=-=-=-=-=-=-=-=-=-=__**/
// Различия структуры от классов
    // 1. Класс является ссылочным
    // 2. Если экземпляр структуры положить в константы, то не получится изменить значение значение свойств
    // 3. У структуры есть автоматический инициализатор


/**_=-=-=-=-=-=-=-=-=-=-СТРУКТУРЫ-=-=-=-=-=-=-=-=-=-=_**/
struct Struct1 {
    var struct1Property1: String = "struct1Property1"
}


/**_=-=-=-=-=-=-=-=-=-=-КЛАССЫ-=-=-=-=-=-=-=-=-=-=_**/
class Class1 {
    // Свойства
    var class1Property1: String = "class1Property1"
    
    let class1Property2: String = "class1Property2"
    
    // Методы
    func class1Method1() {
        print(class1Property1)
    }
}

// Создание экземпляра
var class1 = Class1();

// Получение значения свойства
class1.class1Property1

// Установить новое значение свойства
// Константы изменять нельзя
class1.class1Property1 = "new Value for class1 property1"

// Вызов методов
class1.class1Method1()

/**_=-=-=-=-=-=-=-=-=-=- РАЛИЧИЯ КЛАССОВ ОТ СТРУКТУРЫ-=-=-=-=-=-=-=-=-=-=_**/
let struct1 = Struct1()
// Ошибка, из-за того, что экземпляр структуры находится в константе
// struct1.struct1Property1 = "new Value"

var class1Var2 = Class1()
var class1Var3 = class1Var2

// Вот что такое ссылочный класс, а структура такого не умеет =)
class1Var3.class1Property1 = "new Value"
class1Var2.class1Property1 //  new Value

/**_=-=-=-=-=-=-=-=-=-=-ИНИЦИАЛИЗАТОР КЛАССА И СТРУКТУРЫ-=-=-=-=-=-=-=-=-=-=_**/
class Class2 {
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

struct Struct2 {
    var name: String
    var surname: String
}

var class2 = Class2(name: "My name for class", surname: "My surname for class")

// Структура получала стандартный инициализатор
var struct2 = Struct2(name: "My name for struct", surname: "My surname for struct")

/**_=-=-=-=-=-=-=-=-=-=-ПОДРОБНЕЕ О СВОЙСТВАХ-=-=-=-=-=-=-=-=-=-=_**/
/**
 Свойства делятся на "хранимые" и "вычесляемые"
 Линивые свойства хранения
 Хранимвые свойства нельзя задать для Enum
 
 Через init можно задать значение даже для констант
 */

// Линивые свойства инициализируются, только тогда, когда к ним обращаются
// Через init нельзя установить значение для ленивого свойства
class Client {
    init() {
        print("Client1")
    }
}

class Class3 {
    var lazyProperty = Client()
}

class Class4 {
    lazy var lazyProperty = Client()
}

let class3 = Class3() // Выполнится print у Client
let class4 = Class4() // Не выполнится print у Client, покаместь мы не обратимся к lazyProperty

/**_=-=-=-=-=-=-=-=-=-=-ВЫЧЕСЛЯЕМЫЕ СВОЙСТВА-=-=-=-=-=-=-=-=-=-=_**/
// Нельзя объявить как константу
// Если нужно сделать вычесляемое свойство, только для чистения, нужно не добавлять set

struct Size {
    var width: Int
    var height: Int
}

struct Rect {
    var size: Size
    
    // Вычесляемое свойство
    var sum: Int {
        get { // При получении значения данного свойства
            return size.width + size.height
        }
        set {
            // newValue - Устанавливаемое значение в свойство
            // Данное имя можно переопределить, создав set(myValue) {}
            size.width = newValue
            size.height = newValue
        }
    }
    
    var sum2: Int { // Если свойство, только для чтения, то можно не использовать get
        return size.width + size.height
    }
}

let size = Size(width: 10, height: 10)
var rect = Rect(size: size)

rect.sum // 20
rect.sum = 30
rect.sum // 60

/**_=-=-=-=-=-=-=-=-=-=-НАБЛЮДАТЕЛИ СВОЙСТВ-=-=-=-=-=-=-=-=-=-=_**/
struct ObserverProperty {
    var name: String {
        willSet { // Вызывается ПЕРЕД установкой нового значения
            print("Попытка установить значение: c \(name) на \(newValue)")
        }
        didSet { // Вызывается ПОСЛЕ установки нового значения
            print("Установленно новое значение")
        }
    }
}

var ObserverProperty1 = ObserverProperty.init(name: "Test")
ObserverProperty1.name = "new Test"

/**_=-=-=-=-=-=-=-=-=-=-СВОЙСТВА ТИПА-=-=-=-=-=-=-=-=-=-=_**/
class PropertyType {
    static var var1: Int = 123
    
    // Только для класса и можно переопределить внутри наследника
    class var var2: Int {
        return var1 * 2
    }
}

PropertyType.var1 // 123
PropertyType.var1 = 100 // Сменить на 100
PropertyType.var2 // 200

// Изменение свойст с внутри методов
class Class5 {
    var property: Int = 0
    
    func changeProperty(_ value: Int) -> Void {
        property = value
    }
}

// При изменении значений свойст через методы
// Метод должен иметь модификатор "mutating"
struct Struct5 {
    var property: Int = 0
    
    mutating func changeProperty(_ value: Int) -> Void {
        property = value
    }
}

var class5 = Class5()
var struct5 = Struct5()

class5.changeProperty(10)
struct5.changeProperty(15)

/** В классах и структурах, ключевое слово "self" ссылается на текущий объект */
/** В Enum ключевое слово "self" ссылается на "case"*/

// Мини игра
struct Fighter {
    var name: String
    var life: Int
    var force: Int
    var isLive: Bool {
        return life > 0
    }
}

struct Arena {
    var leftFighter: Fighter
    var rightFighter: Fighter
    var hit: Hit = .left
    var winners = [String]()
    
    mutating func attack() -> Self {
        // Бьем покаместь один из игроков не умрет
        while leftFighter.isLive && rightFighter.isLive {
            switch hit {
            case .left:
                self.bump(attacking: leftFighter, defensive: &rightFighter)
            case .right:
                self.bump(attacking: rightFighter, defensive: &leftFighter)
            }
            
            // Следующий удар
            hit.next()
        }
        
        // Устанавливаем победителя
        if leftFighter.isLive {
            addWinner(winner: leftFighter, loser: rightFighter)
        } else {
            addWinner(winner: rightFighter, loser: leftFighter)
        }
        
        return self
    }
    
    func bump(attacking: Fighter, defensive: inout Fighter) -> Void {
        defensive.life -= attacking.force
    }
    
    mutating func addWinner(winner: Fighter, loser: Fighter) -> Self {
        winners.append("\(winner.name) победил игрока \(loser.name)")
        
        return self
    }
}

enum Hit {
    case left
    case right
    
    mutating func next() {
        switch self {
        case .left:
            self = .right
        case .right:
            self = .left
        }
    }
}

var fighter1 = Fighter(name: "Fighter1", life: 20, force: 5)
var fighter2 = Fighter(name: "Fighter2", life: 30, force: 3)

var arena1 = Arena(leftFighter: fighter1, rightFighter: fighter2)

print(arena1.attack().winners)



/**__=-=-=-=-=-=-=-=-=-=-САБСКРИПТЫ-=-=-=-=-=-=-=-=-=-=__**/
struct Struct6 {
    var num: Int
    
    subscript(index: Int) -> Int {
        get {
            return self.num * index
        }
        set {
            self.num = newValue
        }
    }
}

var struct6 = Struct6(num: 2)
struct6[1]
struct6[2] = 5
struct6[3]

// Несколько параметров у сабскрипта
struct Struct7 {
    var num: Int
    
    subscript(nums: Int...) -> Int {
        var foldedNumbers: Int = 0
        
        for num in nums {
            foldedNumbers += num
        }
        
        return foldedNumbers
    }
}

var struct7 = Struct7(num: 5)
struct7[10, 15, 5, 10]



/**__=-=-=-=-=-=-=-=-=-=-НАСЛЕДОВАНИЕ-=-=-=-=-=-=-=-=-=-=__**/
class Class8 {
    var name: String? = nil
}

class Class9: Class8 {
    var surname: String? = nil
    
    func getSurname() -> String? {
        return self.surname
    }
}

let class9 = Class9()
class9.name = "My Name"
class9.surname = "My Surname"


/**_=-=-=-=-=-=-=-=-=-=-ПЕРЕОПРЕДЕЛЕНИЕ СВОЙСТВ, МЕТОДОВ-=-=-=-=-=-=-=-=-=-=_**/
// Для переопределение конструкции, перед ней нужно указать ключевое слово "override"
class Class10: Class9 {
    override func getSurname() -> String? {
        if self.surname == nil {
            return nil
        }
        
        return self.surname! + " override"
    }
}
let class10 = Class10()
class10.surname = "My surname"
class10.getSurname()

/**_=-=-=-=-=-=-=-=-=-=-ЗАПРЕТИТЬ НАСЛЕДОВАНИЕ-=-=-=-=-=-=-=-=-=-=_**/
// Для того, чтобы запретить наследование класса или свойст, методов
// Нужно перед конструкцией указать ключевое слово "final"

final class Class11 {
    final var property: String? = nil
    
    final func method() -> Void {
        
    }
}


/**_=-=-=-=-=-=-=-=-=-=-ОБРАЩЕНИЕ К РОДИТЕЛЬСКОЙ ПЕРЕОПРЕДЕЛЕННОЙ КОНСТРУКЦИИ-=-=-=-=-=-=-=-=-=-=_**/
class Class12 {
    func getName() -> String {
        return "Name in Class12"
    }
}

class Class13: Class12 {
    override func getName() -> String {
        return "Next text from class 12 -> \(super.getName()) in class13"
    }
}
let class12 = Class12()
let class13 = Class13()

class12.getName()
class13.getName()



/**__=-=-=-=-=-=-=-=-=-=-ДЕЛЕГИРОВАНИЕ ИНИЦИАЛИЗАТОРОВ-=-=-=-=-=-=-=-=-=-=__**/
// Назначенный init, не имеет модификатора
// Вспомогательный init имеет модификатор "convenience"

struct Struct8 {
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    init(struct9: Struct9) {
        self.init(name: struct9.name, surname: struct9.surname) // Доп., изменение свойств указывается после вызова инициализатора
    }
}

struct Struct9 {
    var name: String
    var surname: String
}



/**__=-=-=-=-=-=-=-=-=-=-FAILED INIT-=-=-=-=-=-=-=-=-=-=__**/
struct Struct10 {
    var num: Int
    
    // Должен в каких-то случаях вернуть nil
    init?(num: Int) {
        if num < 10 {
            return nil
        }
        
        self.num = num
    }
}

Struct10(num: 5) // nil
Struct10(num: 15) // Struct 10


/**__=-=-=-=-=-=-=-=-=-=-ОБЯЗАТЕЛЬНЫЙ INIT-=-=-=-=-=-=-=-=-=-=__**/
class Class15 {
    var num: Int
    
    // Должен быть переопределен у наследника
    required init(num: Int) {
        self.num = num
    }
}



/**__=-=-=-=-=-=-=-=-=-=-ДЕИНИЦАЛИЗАЦИЯ-=-=-=-=-=-=-=-=-=-=__**/
class Class16 {
    var sum: Int = 0
    
    deinit {
        self.sum -= 10
        
        print("Со счета снялось 10")
    }
}

let class16 = Class16() // deinit не сработает

func deinitFroClass16() -> Class16 {
    let class16 = Class16()
    
    class16.sum = 50
    
    return class16
}
deinitFroClass16().sum // deinit сработает



/**__=-=-=-=-=-=-=-=-=-=-ОПЦИОНАЛЬНАЯ ПОСЛЕДОВАТЕЛЬНОСТЬ-=-=-=-=-=-=-=-=-=-=__**/
class Class17 {
    let class18 = Class18()
}

class Class18 {
    var class19: Class19? = nil
}

class Class19 {
    var num: Int = 10
}


let class17 = Class17()

// class17.class18.class19!.num // Error
class17.class18.class19?.num // nil
class17.class18.class19 = Class19()
class17.class18.class19?.num // 10 optional type

/**
 Запись class17.class18.class19?.num
 Равносильна такой записи: (class17.class18.class19 != nil) ? class17.class18.class19?.num : nil
 */



/**__=-=-=-=-=-=-=-=-=-=-ИСКЛЮЧЕНИЯ-=-=-=-=-=-=-=-=-=-=__**/
// Указать throws нужно всегда, если внутри будет выброс исключения
func th1(num: Int) throws -> Void {
    if num > 5 {
        throw NSError(domain: "num > 5", code: 1)
    }
}
try th1(num: 1)
// try th1(num: 10) // Выбрасывается исключение

/**_=-=-=-=-=-=-=-=-=-=-ОБРАБОТКА ИСКЛЮЧЕНИЙ-=-=-=-=-=-=-=-=-=-=_**/
do {
    try th1(num: 20)
} catch let error {
    print("th1 Выбрасило исключение: \(error.localizedDescription)")
}


/**_=-=-=-=-=-=-=-=-=-=-ОБРАБОТКА ИСКЛЮЧЕНИЙ КАК ОПЦИОНАЛ-=-=-=-=-=-=-=-=-=-=_**/
try? th1(num: 20) // Если будет выброс исключения, то вместо ошибки будет возврат nil

try! th1(num: 1) // Мы 100% знаем, что исключение не выбросится

/**_=-=-=-=-=-=-=-=-=-=-СОЗДАНИЕ СВОЕГО ИСКЛЮЧЕНИЯ-=-=-=-=-=-=-=-=-=-=_**/
enum MyError: Error {
    case pageNotFound
    case errorResponse(Int)
}

func funcWithMyThrow(num: Int) throws -> Void {
    if num > 10 && num < 20 {
        throw MyError.pageNotFound
    }
    
    if num > 20 {
        throw MyError.errorResponse(400)
    }
}

do {
    try funcWithMyThrow(num: 100)
} catch MyError.pageNotFound {
    print("Page not found")
} catch let MyError.errorResponse(code) {
    print("My error error response \(code)")
}

/**__=-=-=-=-=-=-=-=-=-=-ПРИВЕДЕНИЕ ТИПОВ-=-=-=-=-=-=-=-=-=-=__**/
var checkTypeValue: Any = 10

if checkTypeValue is Int {
    print("let checkTypeValue is int")
}

//  если checkTypeValue типа  Int, то присвоить переменной Int, иначе присвоить nil
let varWithAs = checkTypeValue as? Int

// Если checkTypeValue не типа Int и не получится привести к типу Int, то приложение упадет
let varWithAs2 = checkTypeValue as! Int
// let varWithAs3 = checkTypeValue as! String // ERROR



/**__=-=-=-=-=-=-=-=-=-=-РАСШИРЕНИЯ-=-=-=-=-=-=-=-=-=-=__**/
class ClassForExtension {
    
}

// Расширение может только добавлять
extension ClassForExtension {
    func getName() -> String {
        return "Danil"
    }
}

(ClassForExtension()).getName()

// Расширение типов
extension Int {
    mutating func plusOne() -> Self {
        self += 1
        
        return self
    }
}

var usePlusOne: Int = 0
usePlusOne.plusOne()

print(usePlusOne)



/**__=-=-=-=-=-=-=-=-=-=-ПРОТОКОЛЫ-=-=-=-=-=-=-=-=-=-=__**/
// Протоколы не имеют реализацию, а только описывают структуру
protocol Protocol1 {
    var name: String { get set }
    static var surname: String { get}
    
    func getName() -> String
}

protocol Protocol2 {
    var isActive: Bool { get }
}

struct StructWithProtocol1: Protocol1 {
    var name: String
    static var surname: String = "My surname"
    
    func getName() -> String {
        return self.name
    }
}

extension StructWithProtocol1: Protocol2 {
    var isActive: Bool {
        return false
    }
}

var structWithProtocol1 = StructWithProtocol1(name: "Danil")
structWithProtocol1.isActive

// Использование протоколов как тип данных
struct StructWithUseProtocolAsType {
    var structWithProtocol1: Protocol1
}

var structWithUseProtocolAsType = StructWithUseProtocolAsType(structWithProtocol1: StructWithProtocol1(name: "Danil") as Protocol1)


// Подписка на протокол в протоколе
protocol ProtocolWithSubscribeProtocol: Protocol1, Protocol2 {
    func setName(_ name: String) -> Self
}


// Протоколы только для классов
// Протокол должен подписаться на протокол AnyObject
protocol ProtocolForClass: AnyObject {
    
}



/**__=-=-=-=-=-=-=-=-=-=-ДЖЕНЕРИКИ-=-=-=-=-=-=-=-=-=-=__**/
func funcWithGeneric<T>(num: T) -> Void {
    print(num)
}
funcWithGeneric(num: 10)

func funcWithMultipleGeneric<T1, T2>(val1: T1, val2: T2) -> Void {
    print("val1=\(val1) val2=\(val2)")
}

struct StructWithGeneric<Key, Value> {
    var key: Key
    var value: Value
    
    func getKey() -> Key {
        return self.key
    }
    
    func getValue() -> Value {
        return self.value
    }
}
var structWithGeneric = StructWithGeneric<Int, String>(key: 0, value: "Val")
print("\(structWithGeneric.getKey()) \(structWithGeneric.getValue())")


// Подписать тип на протокол
struct StructWithGenericSubscribeProtocol1<T: Equatable> {
    func eq(a: T, b: T) -> Bool {
        return a == b
    }
}
(StructWithGenericSubscribeProtocol1()).eq(a: 10, b: 8)

struct StructWithGenericSubscribeProtocol2<T> where T: Equatable {
    func eq(a: T, b: T) -> Bool {
        return a == b
    }
}
(StructWithGenericSubscribeProtocol1()).eq(a: 10, b: 8)



/**__=-=-=-=-=-=-=-=-=-=-ASSOCIATED TYPE-=-=-=-=-=-=-=-=-=-=__**/

protocol AssociatedTypeProtocol {
    associatedtype MyType
    
    var name: MyType { get set }
}

struct AssociatedTypeStruct: AssociatedTypeProtocol {
    typealias MyType = String
    
    var name: String
}

struct AssociatedTypeStruct2: AssociatedTypeProtocol {
    typealias MyType = String
    
    var name: MyType
}

struct AssociatedTypeStruct3<T>: AssociatedTypeProtocol {
    typealias MyType = T
    
    var name: T
}

struct AssociatedTypeStruct4<T>: AssociatedTypeProtocol {
    typealias MyType = T
    
    var name: MyType
}

(AssociatedTypeStruct(name: "Danil1")).name
(AssociatedTypeStruct2(name: "Danil2")).name
(AssociatedTypeStruct3(name: "Danil3")).name
(AssociatedTypeStruct4(name: "Danil4")).name
