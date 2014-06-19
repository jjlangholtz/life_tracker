class LifeEventsController < ApplicationController
  before_action :set_life_event, only: [:edit, :update, :destroy]

  def new
    @life_event = LifeEvent.new
  end

  def edit
  end

  def create
    @life_event = LifeEvent.new(life_event_params)
    @person = Person.find(params[:person_id])
    @life_event.person = @person

    respond_to do |format|
      if @life_event.save
        format.html { redirect_to person_path(@person), notice: 'Life event was successfully created.' }
        format.json { render :show, status: :created, location: @life_event }
      else
        format.html { render :new }
        format.json { render json: @life_event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @life_event.update(life_event_params)
        format.html { redirect_to @life_event, notice: 'Life event was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_event }
      else
        format.html { render :edit }
        format.json { render json: @life_event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @life_event.destroy
    respond_to do |format|
      format.html { redirect_to life_events_url, notice: 'Life event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_life_event
      @life_event = LifeEvent.find(params[:id])
    end

    def life_event_params
      params.require(:life_event).permit(:title, :year, :description, :person_id)
    end
end
