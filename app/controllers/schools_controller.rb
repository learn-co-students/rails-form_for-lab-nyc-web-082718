class SchoolsController < ApplicationController
# new, create, show, edit, and update

  def index
    @schools = School.all
  end

  def show
    @school = School.find_by(id: params[:id])
  end

  def new
    @school = School.new
  end

  def create
    @school = School.create(school_params)
    redirect_to school_path(@school)
  end

  def edit
    @school = School.find_by(id: params[:id])
  end

  def update
    @school = School.find_by(id: params[:id])
    @school.update(school_params)
    redirect_to school_path @school
  end

  private

  def school_params
     params.require(:school).permit([:title, :room_number])
  end


end
