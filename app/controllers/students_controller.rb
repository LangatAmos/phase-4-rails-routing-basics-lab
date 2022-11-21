class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        list = Student.order(grade: :desc)
        render json: list
    end
end
