import UIKit
import Foundation

var greeting = "Hello, playground"

// 변수 상수

var firstName = "lee"
firstName = "kim"
firstName = "aa"
firstName
// tㅏㅇ수

let myId = "abcd"
//myId = "changeId"
myId

// Type
var myName = "Sangnam"
var firstName1: String = "Lee"
(firstName1+myName)
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print

// type - int, double,, float
var myID:Double = 50
// 소숫점의 경우 기본이 double다
var myUUID:Float=100.0


//type -uint
// unsigned integer : 양수 정수만 가능
var myNumber: UInt = 100
var testAll: Any = 100
testAll = "아무거나 가능"

//type alias
// rㅣ존 타입을 이름을 바꿔서 새로운타입을 만드는 개념
// 기존 타입을 조합해서 새로운 타입을 만들수도 있음.

typealias SampleRate  = UInt8
// sampleRate : type 을 새로 만드는 것.
// 가독성을 위해 하는 경우가 많다.
var myMusic:SampleRate = 10

typealias GridPoint = (x: Int, y: Int)
// 해당 이름을 따로 지정하지 않으면 .0 으로접근 할 수있다.
var touchPoint:GridPoint = GridPoint(10,40)
touchPoint.x


//Operator

let a = 101
let b = 20
a == b
a != b
a > b
a < b
a + b
a - b
a * b
a / b
a % b

let str1 = "a"
let str2 = "b"

// 문자열은 더하기
str1+str2


if a==b{
    print("같다")
}else{
    print("다르다")
}
a == b ? print("같다") : print("다르다")

//??

var aa : Int?
// aa 가 비어있다면 0으로 나온다.
print(aa ?? 0)

// for
for index in 0..<4{
    print("반복\(index)")
}
print("--------------배열반복---------")
let Array1=["a","b","c","d"]
for index in 0..<Array1.count{
    print("반복\(Array1[index])")
    
}
print("--------------배열반복2---------")
for value in Array1[0...]{
    print("배열값 : \(value)")
}

// Optional Type
// Expression :?
// 중요한 부분


var myString1 : String?  //optional 값이 없을경우 nil 이 된다. nil = null


var myString2 : String // non-optional nil 이 들어가면 에러가 나온다.

// optional 타입을 쓰는 경우
// 네트워크로 데이터를 받을때 .
// 시험을 볼때
// 0 (다틀린것)
// 아직 안본 경우

var myScore: Int?
myScore = 3
if myScore == nil{
    print("아직 시험을 보지 않았습니다.")
}else{
    print("시험 점수는 \(myScore!)점입니다.")
}


// Unwrapping (옵셔널을 벗겨내는 형태)


// Force Unwrapping ( 강제)

var myScore1: Int?

if myScore1 == nil{
    print("nil")
    // nil 을 체크하는 로직을 항상 추가한다.
}else if myScore1! < 100{
    print("has score")
}


// optional binding
// 자동으로 nil 체크 문법 지원
if let hasScore = myScore{
    if hasScore < 50{
        print("값있음")
    }
    // nil 인경우 else로
}else{
    print("nil")
}

// Optional Chaining
class People{
    var score: Score?
}
class Score{
    var testName: String?
}
var people: People? = People()
if let hasName = people?.score?.testName{ // 어느 값이던 nil 값이 오면 결과값이 nil이다.
    if hasName == "park"{
        
    }
}

// nil Coalescing Operrator
// 닐 병합 연산자.

var myName1: String?

print(myName1 ?? "jin") // myname1 이 nil이면 jin을 출력한다.


// Collection Types
// Array, set, Dictionary

// Array
var someStrings = [String]()
//contentsof : 다른 배열을 넣을때
//newelement : 값
someStrings.append("aa")
someStrings.append("ccc")
someStrings.append("3")

someStrings.remove(at: 1)
//someStrings.remove(at: 2). index out of range : 인덱스가 범위를 벗어났다. ccc가 삭제되면서 배열의 길이가 2로 줄어들면서 0,1 만 가능하다.


var removeIndex = 2
if someStrings.count - 1 >= removeIndex{
    someStrings.remove(at: removeIndex)
}
print(someStrings)


//set
// 순서가 없다.!, 중복허용이 안된다.!
// Hashable - String, Int, double, bool  기본 고유값을 가지는 값
var Strings1 = Set<String>()
var Strings2 = Set<String>()

Strings1.insert("aa")
Strings1.insert("bb")
Strings1.insert("cc")
Strings1.insert("zz")

Strings2.insert("가")
Strings2.insert("나")
Strings2.insert("다")
Strings2.insert("zz")

let union = Strings1.union(Strings2)
print(union)

let inter = Strings1.intersection(Strings2)
print(inter)

//Dictionary
// Key:Value
//Value 는 optional 값이다.
var sports = [String : Any]()

sports["soccer"] = "korea"
sports["baseball"] = 3
sports["football"] = true

sports["soccer"] = "seoul"

if let hasSoccer = sports["soccer"]{
    print(hasSoccer)
}


// For in Loops
var names = ["john","lee","kim","brian"]
var ages = [5,6,2,7,5]

for element in names{
    print(element+"sir")
}

for element1 in ages{
    print(element1+10)
}


// Dictionary

var peoples = ["john":5,"lee":12,"kim":7]
for element in peoples{
    print(element.key,element.value)
}

for index in 0..<peoples.count {//0부터 count 개수보다 작을때 까지
    print(index)
}

// switch

var someNumber = 5

switch someNumber { //스위치에 조건값의 타입이 int타입이면 int타입의 조건만 검사할 수 있다.
    // case 5...10: 5부터 10의 범위의 조건 검사
case 5:
    print("5555")
default:
    print("default")
}


//functions
// 함수 - 기능
// -> : return ,int : 타입
func sum(number1: Int,number2: Int) -> Int{
    return number1+number2
}



var sumResult = sum(number1: 5, number2: 22 )
print(sumResult)


//파라미터의 이름을 두가지 정할 수 있다.
//파마미터의 첫번째 이름에 _ 를 사용하면 함수를 호출할때 아규먼트 이름을 생략 할 수 있다.
//파라미터 1번쨰 2번째 의 의미
// 1번째 실제로 사용할 파라미터(아규먼트)의 이름
// 2번째 함수 내에서 사용할 파라미터의 이름
func sum2(_ num1:Int,_ num2:Int)->Int{
    return num1+num2
}

var mySum = sum2(50, 23)
print(mySum)


// 파라미터가 여러개
// array 타입이다.
func sumAll(numbers: Int...) -> Int{
    // for in
    var total = 0
    for number in numbers{
        total+=number
    }
    return total
}

sumAll(numbers:1,2,3,4,5,6,7,8,9,10)


func sum3(_ num1: Int, _ num2: Int) -> (Int, Int, Int){
    
    return (num1, num2, num1 + num2 )
}

sum3(20,40)

//Closures 클로저
// 바로 실행하지 않고, 코드 블럭을 전달 시킬 수 있다.
func sayHi(firstName:String, lastName:String)->String{
    return "\(firstName+lastName)Hello"
}
// 파라미터 -> 리턴타입
var sayHiclosure = { (firstName:String,lastName:String) -> String in
    return "\(firstName+lastName)Hello" // 실행코드
}

// 파라미터 -> 리턴타입 (리턴타입 생략 가능)
// type inference( 타입추론) 리턴의 값을보고 타입을 추론한다.
var sayHiclosure2 = { (firstName:String,lastName:String) in
    return "\(firstName+lastName)Hello" // 실행코드
}

// 파라미터 -> 리턴타입
// return 생략 : 암시적 생략 (Inplicit Returns)
// - from Single-express closure ( 클로저가 한줄일 때)
var sayHiclosure3 = { (firstName:String,lastName:String) -> String in
    "\(firstName+lastName)Hello" // 실행코드 return을 생략 가능
    // 실행 코드가 1줄인 경우 return 을 생략 가능하다.
}

// 파라미터 -> 리턴타입

var sayHiclosure4: (String,String) -> String = { (firstName, lastName) in
    "\(firstName+lastName)Hello" // 실행코드 return을 생략 가능
    // 실행 코드가 1줄인 경우 return 을 생략 가능하다.
}

// 파라미터 -> 리턴타입
//$0 : 파라미터의 0번째
//shortand Arguments Namse (인자 이름 축약)
var sayHiclosure5: (String,String) -> String = { $0 + $1 }

sayHi(firstName:"lee",lastName: "sangnam")
sayHiclosure("lee","sangnam")
sayHiclosure2("lee","sangnam")
sayHiclosure3("lee","sangnam")
sayHiclosure4("lee","sangnam")
sayHiclosure5("lee","sangnam")


//Closure Expert

var names1 = ["apple","lemon","air","brown","red","band","candy"]

//filter a 로 시작, b로 시작

func filterString(datas:[String],firstString: String)->[String]{
    var newDatas=[String]()
    for index in 0..<datas.count{
        //first : 첫번째 글자 .description: String 으로 형변환
        if datas[index].first?.description == firstString{
            newDatas.append(datas[index])
        }
    }
    return newDatas
}
filterString(datas: names1, firstString: "a")



func filterStringClosure(datas:[String],closure: (String)-> Bool) -> [String]{
    var newDatas = [String]()
    for data in datas{
        if closure(data){
            newDatas.append(data)
        }
    }
    return newDatas
}

// 왜 이렇게 만들까 대체?
// 실행하는 순간에 조건을 확인하기 편하다.
// 함수는 함수를 호출할때 함수로 돌아가서 확인을 해야 하지만
// 클로저는 함수로 들어가지 않아도 조건을 확인할 수 있다.
let filtered = filterStringClosure(datas: names1) { element in
    if element.first?.description == "a"{
        return true
    }
    return false
}
print(filtered)

// 이렇게 해두면 조건을 변경하기 쉽다.
// 조건을 클로저로 변경해버리면
// 함수를 호출할 때 클로저내의 조건만 변경하면 된다.
// 조건이 여러가지로 들어갈경우 클로저를 사용하면 좋은경우가 많다.
var findA: (String) -> Bool = { element in
    if element.first?.description == "b"{
        return true
    }
    return false
}

filterStringClosure(datas: names1, closure: findA)


//closure + func

func greeting(name: String) -> String{
    return "hi" + name
}

greeting(name: "lee")

func greetingClosure(name:String)-> () -> String{
    return {"hi" + name}
}
// 함수의  return type이 closure인 경우에는 실 행을 해줘야 한다.
// () 클로저를 실행해준다.
greetingClosure(name: "lee")()


// Enumeration
// 열거형 : 특정한 타입들의 묶음
enum CurrentPoint{
    case current
    case near
    case other
}

enum ImageType{
    case none
    case jpg
    case png
    case gif
}

var imageType = ImageType.none

if imageType == .none{
    
}else{
    
}
// enum 값 받아오기
enum MediaType {
    case picture(width: String, height:String)
    case movie(length: Int)
}
// enum 값을 넣고
var media = MediaType.picture(width: "200", height: "300")
//media = .movie(length: 50)
//switch 로 구분하여 사용한다.
switch media{
case.movie(length: let length):
    print(length)
case.picture(width: let width, height: let height):
    print(width)
    print(height)
default:
    break
}

// Class


class Soccer {
    var homeScore = 0
    var awayScore = 0
    func result() -> String{
        return "\(homeScore)" + " : " + "\(awayScore)"
    }
}

var soccer = Soccer()
soccer.homeScore = 5
soccer.awayScore = 3
soccer.result()

// 상속
class ScoreBoard {
    var homeScore = 0
    var awayScore = 0
    func result() -> String{
        return "\(homeScore)" + " : " + "\(awayScore)"
    }
}

class Tennis: ScoreBoard{
    
}

// override
class BaseBall: ScoreBoard{
    override func result() -> String {
        return "\(homeScore)" + " - " + "\(awayScore)"
    }
}
var tennis = Tennis()
tennis.awayScore = 3
tennis.homeScore = 4
tennis.result()


// override
// 참조
var soccer2 = soccer
soccer2.homeScore = 10
soccer.homeScore // 주소값을 참조받아 soccer2를 변경해도 soccer 도 같이 변경된다.
// 값 복사

var baseball = BaseBall()
baseball.awayScore = 3
baseball.homeScore = 5
baseball.result()

// Properties 프로퍼티

// Stored Properties : 저장 프로퍼티 var score = 10

class SomeClass{
    var firstScore = 10 // Stored Properties
    var secondScore = 20 // Stored Properties
    // Computed Properties : 계산 프로퍼티
    var totalScore: Int { // set을 쓰지 않으면 읽기 전용이 되어버린다. //
        get{ //
            return firstScore+secondScore
        }
        set{ //입력하고 싶을때
            
        }
    }
}
var someClass = SomeClass()
someClass.totalScore

struct SomeStruct{
    var score = 10
}

enum SomeEnum{
    //    var score = 10 stored properties 사용불가.
    case iPhone
    case iPad
    
    var price: Int {
        switch self{
        case .iPhone:
            return 500
        case .iPad:
            return 1000
        }
    }
}
var someEnum = SomeEnum.iPad
someEnum.price

// Initialization
// 초기화

// 인스턴스 생성
class Score1{
    var homeTeamScore: Int
    var awayTeamScore: Int
    
    func totalScore() -> Int {
        return homeTeamScore+awayTeamScore
    }
    
    // 만들어질 때 무조건 실행되는 것
    // 프로퍼티를 만들 때 값이 있는경우 생략 가능
    // 예외인 경우가 있다. 프로퍼티가 optional type 경우
    // 즉 옵셔널타입 = 값이 없을 수 도있기 때문에 ㅠㅜ
    init(){
        homeTeamScore = 5
        awayTeamScore = 5
    }
    
}
// class 나 스트럭트의 경우 자동으로 init이 된다.

//인스턴스 생성.  (): initialization
var ss = Score1()
ss.awayTeamScore
ss.homeTeamScore


// Deinitialization
// 초기화 해제

class Score2{
    init(){
        // 생성 될 때 실행하는 구문
        print("생성되는 시점에 호출")
    }
    
    deinit {
        // 초기화를 해제
        // 팝업이 내려가는 경우
        print("소멸되는 시점에 호출")
    }
}

var ss2: Score2? = Score2() // nil 값을 허용한다는 타입설정을 해야 초기화를 해제 할 수 있다.

ss2 = nil // 초기화 하는 방법.


//Extension
// 익스텐션

// color 지정 할 때 사용
// 메인컬러 -
// 서브컬러 -
// 텍스트 메인 타이틀 -
// 텍스트 상세 -
var titleColor: UIColor!
var descriptionColor: UIColor!
extension UIColor {
    var mainRedColor: UIColor{
        return UIColor(red: 240/255, green: 30/255, blue: 30/255, alpha: 1)
    }
    var subGreenColor: UIColor{
        return UIColor(red: 240/255, green: 30/255, blue: 30/255, alpha: 1)
    }
}
//titleColor = UIColor(red: 240/255, green: 30/255, blue: 30/255, alpha: 1)
titleColor = UIColor().mainRedColor
descriptionColor = UIColor(red: 50/255, green: 250/255, blue: 30/255, alpha: 1)


// Protocols
// 프로토콜 : 특정한 조건을 강제 하고 싶을때 사용
// 반드시 사용하기 위해서 구현해야 하는것을 프로토콜로 설정한다.
//
//class myClass1 : UIViewController, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell()
//    }
//
//
//}
protocol DeskMaterial{
    var top: String {get set}
    var middle: String {get set}
}


protocol DeskSize{
    var widht: Int {get set}
    var height: Int {get set}
    func area() -> Int
}

class myDesk: DeskSize, DeskMaterial{
    var top: String = "top"
    
    var middle: String = "middle"
    
    var widht: Int = 5
    
    var height: Int = 5
    
    func area() -> Int {
        return widht * height
    }
    
}

var myClass = myDesk()
myClass.widht
myClass.height

// Generic
// 제네릭


var intValue: Int = 5
var doubleValue: Double = 5.6
var floatValue: Float = 3.4

func plus(a: Int, b: Int) -> Int{
    return a+b
}

plus(a: 5, b: 6)
// 어떤 것(어떤 타입)이든 다 받을 수 있다.
// 제네릭 타입의 범위를 정할 수 있다.
// Numeric : 숫자는 모든지 가
func plusGeneric<T: Numeric>(a: T, b: T) -> T{
    return a + b
}

// 동적으로 타입이 변한다.
var result = plusGeneric(a: doubleValue, b: doubleValue)
result

//Higher Order Function

// map

var numberArray = [2,3,6,4,1]
let mapped = numberArray.map{$0 * 10}
print(mapped)

let strArray = ["lee","jun","kim"]
let mappedStr = strArray.map{$0.uppercased()}
print(mappedStr)

//compact map
// map  과의 차이 : 옵셔널 타입을 풀고 가져온다.
// 타입캐스팅이 불가능한 경우 nil 값을 가져와버린다.
let someArray:[Any]=[2,3,4,"kim","lee"]
let commaped = someArray.compactMap{ $0 as? Int} // as? int 타입을 가져올 수 있냐.
print(commaped)

//filter
let over3 = numberArray.filter{ $0 > 3}
print(over3)

//reduce
// (기준값) {연산되는값}
let numre =  numberArray.reduce(0) { $0 + $1
//    partialResult, value2 in
//    return partialResult+value2
}
print(numre)

let strReduce = strArray.reduce("") {$0 + $1}
print(strReduce)
//sort

// sort(by : >) 내림차순
// sortd(): 배열 자체는 바꾸지 않고, 정렬을 한다.
let sorted = numberArray.sorted()
print(sorted)
print(numberArray)


