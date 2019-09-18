class StudentsController < ApplicationController

    def new
    end

    def create
      @student = Student.create(student_params)
      redirect_to "/students/#{@student.id}"
    end

    def show
      @student = Student.find_by_id(params["id"])
    end

    def edit
      @student = Student.find_by_id(params["id"])
    end



    private
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end
