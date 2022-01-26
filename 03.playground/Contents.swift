import Cocoa

// 스위프트 기초 문법 03 - enum 케이스 분류
// 스위프트에서 enum을 표현하는 방법
// enum은 학교 - 초, 중, 고 처럼 케이스를 나누는 것.

enum School {
    // case elementary
    // case middle
    // case high
    case elementary, middle, high // 위에 3개와 같은 뜻.
}

let yourSchool = School.high // School에 케이스 3개가 들어있어서 선택 가능.
print("yourSchool: \(yourSchool)") // == print("yourSchool: ", yourSchool)
// yourSchool : high

enum Grade: Int { // enum이 Int 타입의 값을 갖는다는 의미
    case first = 1
    case second = 2
    
}

/*
let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")
// yourGrade: second
*/


// enum이 갖는 값 자체를 불러오려면 rawValue
 let yourGrade = Grade.second
 print("yourGrade: \(yourGrade.rawValue)")
// yourGrade: 2

// let yourGrade = Grade.second.rawValue
// print("yourGrade; \(yourGrade)")
// 이래도 똑같은 값 2 출력 가능.


enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String { //함수를 써서 이름 그 자체값을 불러 올 수 있다.
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "성복중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
// yourMiddleSchoolName: middle(name: "성복중학교")

/*
let yourMiddleSchoolName = SchoolDetail.middle(name: "성복중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())") // getName 함수를 써서 값 자체를 불러온다.
// yourMiddleSchoolName: 성복중학교
*/
