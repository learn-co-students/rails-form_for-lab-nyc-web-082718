class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
    render new_school_class_path
  end

  def create
    @school_class = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def index
    @school_classes = SchoolClass.all
  end

end
