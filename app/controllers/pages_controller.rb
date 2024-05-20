class PagesController < ApplicationController

  def home
  end

  def about
  end

  def contact
    @teachers = %w[Mathieu Paul Diane Tim Thomas Nicolas]
    @super_teacher = "Mathieu"

    if params[:teacher]
      @teachers = @teachers.select { |member| member.start_with?(params[:teacher]) }
    end
  end
end
