class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.student
    @student = @classroom.oldest_student
  end

  def index
    @classrooms = Classroom.all
  end
end
