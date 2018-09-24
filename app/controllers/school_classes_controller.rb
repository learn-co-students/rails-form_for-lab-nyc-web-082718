class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params[:school_class])
    # @school_class.update(params[:school_class])
    # @school_class.title = params[:title]
    # @school_class.room_number = params[:room_number]
    # @school_class(params[:school_class])
    @school_class.save
    redirect_to @school_class
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params[:school_class])
    redirect_to @school_class
  end

end
