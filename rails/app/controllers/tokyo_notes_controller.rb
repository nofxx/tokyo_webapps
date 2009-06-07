class TokyoNotesController < ApplicationController
  # GET /tokyo_notes
  # GET /tokyo_notes.xml
  def index
    @tokyo_notes = TokyoNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tokyo_notes }
    end
  end

  # GET /tokyo_notes/1
  # GET /tokyo_notes/1.xml
  def show
    @tokyo_note = TokyoNote.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tokyo_note }
    end
  end

  # GET /tokyo_notes/new
  # GET /tokyo_notes/new.xml
  def new
    @tokyo_note = TokyoNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tokyo_note }
    end
  end

  # GET /tokyo_notes/1/edit
  def edit
    @tokyo_note = TokyoNote.get(params[:id])
  end

  # POST /tokyo_notes
  # POST /tokyo_notes.xml
  def create
    @tokyo_note = TokyoNote.new(params[:tokyo_note])

    respond_to do |format|
      if @tokyo_note.save
        flash[:notice] = 'TokyoNote was successfully created.'
        format.html { redirect_to(@tokyo_note) }
        format.xml  { render :xml => @tokyo_note, :status => :created, :location => @tokyo_note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tokyo_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tokyo_notes/1
  # PUT /tokyo_notes/1.xml
  def update
    @tokyo_note = TokyoNote.find(params[:id])

    respond_to do |format|
      if @tokyo_note.update_attributes(params[:tokyo_note])
        flash[:notice] = 'TokyoNote was successfully updated.'
        format.html { redirect_to(@tokyo_note) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tokyo_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tokyo_notes/1
  # DELETE /tokyo_notes/1.xml
  def destroy
    @tokyo_note = TokyoNote.find(params[:id])
    @tokyo_note.destroy

    respond_to do |format|
      format.html { redirect_to(tokyo_notes_url) }
      format.xml  { head :ok }
    end
  end
end
