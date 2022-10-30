class StudentsController < ApplicationController

    def index
        students = Student.all
        render json:students 
    end

    def grades
        sorted_students = Student.all.sort_by {|stu| stu.grade}.reverse 
        render json:sorted_students
    end

    def highest_grade
        highest_grade_student = Student.all.find_by(grade: Student.all.maximum(:grade))
        render json:highest_grade_student
    end

end
