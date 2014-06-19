class SchoolsController < ApplicationController
  before_action :set_school, only: [:edit, :update, :destroy]

  def new
    @school = School.new
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @person = Person.find(params[:person_id])
    @school.person = @person

    respond_to do |format|
      if @school.save
        format.html { redirect_to person_path(@person), notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to person_path(@person), notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_school
      @school = School.find(params[:id])
      @person = Person.find(params[:person_id])
      @school.person = @person
    end

    def school_params
      params.require(:school).permit(:name, :beginning_year, :ending_year, :person_id)
    end
end
