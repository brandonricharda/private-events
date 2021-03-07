class AttendancesController < ApplicationController
    def index
        @attendances = Attendance.all
    end

    def new
        @attendance = Attendance.new
    end

    def create
        @attendance = Attendance.new(attendance_params)
        respond_to do |format|
            if @attendance.save
                format.html { redirect_to @attendance, notice: 'Invitation was successfully created.' }
                format.json { render :show, status: :created, location: @attendance }
            else
                format.html { render :new }
                format.json { render json: @attendance.errors, status: :unprocessable_entity }
            end
        end
    end

    def show
        @attendance = Attendance.find(params[:id])
    end

    private

    def attendance_params
        params.require(:attendance).permit(:event_id, :user_id)
    end
end