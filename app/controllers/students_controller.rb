class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def active
    @student = Student.find(params[:id])

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
