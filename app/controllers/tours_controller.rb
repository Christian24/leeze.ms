    class ToursController < ApplicationController
      load_and_authorize_resource
      before_action :set_tour, only: [:show, :edit, :update, :destroy]

      # GET /tours
      # GET /tours.json
      def index
        if params[:category_id]
        @tours = Category.find(params[:category_id]).tours
        else
          @tours = Tour.all
          end
      end
      def live_search
        @tours = Tour.where(table[:title].matches("%#{params[:search]}%"))
        render :layout => false

=begin
        @tours  = Tour.all
       # @tours = tours.find
    if params[:category_id].present?
      #Wenn es Kategorien gibt
      @tours = Category.find(params[:category_id]).tours
      if params[:search].present?
        #Wenn es noch eine Search gibt
        @tours = @Tour.where(table[:title].matches("%#{params[:search]}%"))
      end
    else
    if params[:search].present?
      @tours = Tour.where(table[:title].matches("%#{params[:search]}%"))

    else
      @tours = Tour.all
      end
    end

        render :layout => false
=end
      end

      # GET /tours/1
      # GET /tours/1.json
      def show
      end

      # GET /tours/new
      def new
        @tour = Tour.new
      end

      # GET /tours/1/edit
      def edit
      end

      # POST /tours
      # POST /tours.json
      def create
        @tour = Tour.new(tour_params)
        parse_url
        respond_to do |format|
          if @tour.save
            format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
            format.json { render :show, status: :created, location: @tour }
          else
            format.html { render :new }
            format.json { render json: @tour.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /tours/1
      # PATCH/PUT /tours/1.json
      def update
        parse_url
        respond_to do |format|
          if @tour.update(tour_params)
            format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
            format.json { render :show, status: :ok, location: @tour }
          else
            format.html { render :edit }
            format.json { render json: @tour.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /tours/1
      # DELETE /tours/1.json
      def destroy
        @tour.destroy
        respond_to do |format|
          format.html { redirect_to tours_url, notice: 'Tour was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_tour
          @tour = Tour.find(params[:id])

        end
      def table
        Tour.arel_table
      end

        # Never trust parameters from the scary internet, only allow the white list through.
      def tour_params
        params.require(:tour).permit(:title, :teaser, :description, :url, category_ids: [])

      end
      def parse_url
        if @tour.url.include? '"'


        values=  @tour.url.split('"')
        values.each do |value|
          if value.start_with?("http")
            @tour.update_attribute(:url,value)

          end
        end
      end
      end
    end

