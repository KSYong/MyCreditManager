//
//  DataManager.swift
//  MyCreditManager
//
//  Created by 권승용 on 2022/11/13.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    private init() {}
    
    var students: [Student] = []
    
    // MARK: - 학생 추가
    func addStudent(name: String?) {
        // 이름이 nil 이거나 공백일 경우 오류 메시지
        if (name == nil) || (name!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == true) {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
            return
        }
        
        // 이미 있는 이름일 경우 오류 메시지
        if students.filter({ $0.name == name }).count > 0 {
            print("\(name!)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
            return
        }
        
        // 에러 케이스를 모두 통과한 경우 학생 추가
        students.append(Student(name: name!))
        print("\(name!) 학생을 추가했습니다.")
    }
    
    // MARK: - 학생 삭제
    func deleteStudent(name: String?) {
        
        if (name == nil) || (name!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == true) {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
            return
        }
        
        if students.filter({ $0.name == name }).count == 0 {
            print("\(name!) 학생을 찾지 못했습니다.")
            return
        }
        
        students.remove(at: students.firstIndex(where: { $0.name == name })!)
        print("\(name!) 학생을 삭제하였습니다.")
    }
    
    // MARK: - 성적 추가(변경)
    func modifyGrades() {
        
    }
    
    // MARK: - 성적 삭제
    func deleteGrades() {
        
        
    }
    
    // MARK: - 평점 보기
    func showRatings() {
        
    }
}
