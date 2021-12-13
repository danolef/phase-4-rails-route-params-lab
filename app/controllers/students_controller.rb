class StudentsController < ApplicationController

  def index
    byebug
    if params[:first_name] 
    students= Student.where(first_name: params[:first_name], last_name: params[:last_name])
    else
      students = Student.all
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end

