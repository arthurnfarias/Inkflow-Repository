class OkrsController < ApplicationController
  before_action :set_team
  before_action :set_okr, only: [:show, :edit, :update, :destroy]

  # GET /okrs
  # GET /okrs.json
  def index
    @okrs = Okr.all
  end

  # GET /okrs/1
  # GET /okrs/1.json
  def show

  end

  # GET /okrs/new
  def new
    @team = Team.find(params[:team_id])
    @okr = Okr.new
  end

  # GET /okrs/1/edit
  def edit
    @team = Team.find(params[:team_id])

  end

  # POST /okrs
  # POST /okrs.json
  def create
    @team = Team.find(params[:team_id])
    @okr = Okr.new(okr_params)

      if @okr.save
          #flash[:sucess] = "Sucesso!"
          redirect_to action: "show", id: @okr.id
        #format.html { redirect_to @okr, notice: 'Okr was successfully created.' }
        #format.json { render :show, status: :created, location: @okr }
      else
        flash[:error] = @okr.error.full_messages
        redirect_to action: "new", id: @okr.id

        #format.html { render :new }
        #format.json { render json: @okr.errors, status: :unprocessable_entity }
      end

  end

  # PATCH/PUT /okrs/1
  # PATCH/PUT /okrs/1.json
  def update

      if @okr.update(okr_params)

          redirect_to action: "show", id: @okr.id, notice: "A Okr foi editado com sucesso!"
        #format.html { redirect_to @okr, notice: 'Okr was successfully updated.' }
        #format.json { render :show, status: :ok, location: @okr }
      else

        #format.html { render :edit }
        #format.json { render json: @okr.errors, status: :unprocessable_entity }

      end
  end

  # DELETE /okrs/1
  # DELETE /okrs/1.json
  def destroy

    @okr.destroy
    redirect_to team_okrs_path(@team)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
     def set_team
      @team = Team.find(params[:team_id])
    end

    def set_okr
      @okr = Okr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def okr_params
      params.require(:okr).permit(:title, :description, :team_id)
    end
end
