//
//  main.swift
//  MyCreditManager
//
//  Created by 권승용 on 2022/11/12.
//

import Foundation

private var input: String?
private let dataManager = DataManager.shared

while true {
    // MARK: - 메뉴
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    
    input = readLine()
    
    switch input {
    case "1":
        print("추가할 학생의 이름을 입력해주세요")
        dataManager.addStudent(name: readLine())
    case "2":
        print("삭제할 학생의 이름을 입력해주세요")
        dataManager.deleteStudent(name: readLine())
    case "3":
        dataManager.modifyGrades()
    case "4":
        dataManager.deleteGrades()
    case "5":
        dataManager.showRatings()
    case "X":
        print("프로그램을 종료합니다...")
        exit(0)
    default:
        print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
    
}
