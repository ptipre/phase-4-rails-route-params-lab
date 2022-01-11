class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students

   students = Student.find_by(first_name: params[:fname], last_name: params[:lname])
   render json: students

  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
