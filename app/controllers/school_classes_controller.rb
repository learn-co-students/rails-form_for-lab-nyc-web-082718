class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end


  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find_by(params[:id])
  end

  def create
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to @school_class
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(params[:id])
    @school_class.update(params[:school_class])
    redirect_to @school_class
  end



end
