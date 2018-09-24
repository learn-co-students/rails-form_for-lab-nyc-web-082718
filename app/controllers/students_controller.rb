class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to @student
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(params[:student])
    redirect_to @student
  end


end
