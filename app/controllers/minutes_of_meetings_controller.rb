class MinutesOfMeetingsController < ApplicationController
  # GET /minutes_of_meetings
  # GET /minutes_of_meetings.json
  def index
    @minutes_of_meetings = MinutesOfMeeting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @minutes_of_meetings }
    end
  end

  # GET /minutes_of_meetings/1
  # GET /minutes_of_meetings/1.json
  def show
    @minutes_of_meeting = MinutesOfMeeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @minutes_of_meeting }
    end
  end

  # GET /minutes_of_meetings/new
  # GET /minutes_of_meetings/new.json
  def new
    @minutes_of_meeting = MinutesOfMeeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @minutes_of_meeting }
    end
  end

  # GET /minutes_of_meetings/1/edit
  def edit
    @minutes_of_meeting = MinutesOfMeeting.find(params[:id])
  end

  # POST /minutes_of_meetings
  # POST /minutes_of_meetings.json
  def create
    @minutes_of_meeting = MinutesOfMeeting.new(params[:minutes_of_meeting])

    respond_to do |format|
      if @minutes_of_meeting.save
        format.html { redirect_to @minutes_of_meeting, :notice => 'Minutes of meeting was successfully created.' }
        format.json { render :json => @minutes_of_meeting, :status => :created, :location => @minutes_of_meeting }
      else
        format.html { render :action => "new" }
        format.json { render :json => @minutes_of_meeting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /minutes_of_meetings/1
  # PUT /minutes_of_meetings/1.json
  def update
    @minutes_of_meeting = MinutesOfMeeting.find(params[:id])

    respond_to do |format|
      if @minutes_of_meeting.update_attributes(params[:minutes_of_meeting])
        format.html { redirect_to @minutes_of_meeting, :notice => 'Minutes of meeting was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @minutes_of_meeting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /minutes_of_meetings/1
  # DELETE /minutes_of_meetings/1.json
  def destroy
    @minutes_of_meeting = MinutesOfMeeting.find(params[:id])
    @minutes_of_meeting.destroy

    respond_to do |format|
      format.html { redirect_to minutes_of_meetings_url }
      format.json { head :ok }
    end
  end
end
