class StudentSessionsController < ApplicationController

  # GET /student_sessions/new
  # GET /student_sessions/new.xml
  def new
    @student_session = StudentSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_session }
    end
  end

  # POST /student_sessions
  # POST /student_sessions.xml
  def create
    @student_session = StudentSession.new(params[:student_session])      
    student = Student.find_by_email(@student_session.email)
    session[:student_id] = student.id 

    respond_to do |format|
      if @student_session.save
        format.html { redirect_to(:bookings, :notice => 'Student session was successfully created. Student '+student.studentid.to_s+' logged in') }
        format.xml  { render :xml => @student_session, :status => :created, :location => @student_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_sessions/1
  # DELETE /student_sessions/1.xml
  def destroy
    session[:student_id] = nil
    @student_session = StudentSession.find
    @student_session.destroy

    respond_to do |format|
      format.html { redirect_to :controller => :home, :action => :index, :notice => 'Goodbye!' }
      format.xml  { head :ok }
    end
  end
end

