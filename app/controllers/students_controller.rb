class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to students_path
    end

    def update
        @student = Student.find(params[:id])
        @student.update_attributes(student_params)
        redirect_to students_path
    end

    def show 
        @student = Student.find(params[:id])
    end

    private
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end
