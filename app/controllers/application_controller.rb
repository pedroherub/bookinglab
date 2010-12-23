class ApplicationController < ActionController::Base
  protect_from_forgery
  filter_parameter_logging(:password)
  filter_parameter_logging(:password_confirmation)
  
  helper_method :current_student
  
  private
  
  def current_student_session
    return @current_student_session if defined?(@current_student_session)
    @current_student_session = StudentSession.find
  end
  
  def current_student
    return @current_student if defined?(@current_student)
    @current_student = current_student_session && current_student_session.record
  end
end
