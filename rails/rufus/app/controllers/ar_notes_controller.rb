class ArNotesController < ApplicationController
  # GET /ar_notes
  # GET /ar_notes.xml
  def index
    @ar_notes = ArNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ar_notes }
    end
  end

  # GET /ar_notes/1
  # GET /ar_notes/1.xml
  def show
    @ar_note = ArNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ar_note }
    end
  end

  # GET /ar_notes/new
  # GET /ar_notes/new.xml
  def new
    @ar_note = ArNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ar_note }
    end
  end

  # GET /ar_notes/1/edit
  def edit
    @ar_note = ArNote.find(params[:id])
  end

  # POST /ar_notes
  # POST /ar_notes.xml
  def create
    @ar_note = ArNote.new(params[:ar_note])

    respond_to do |format|
      if @ar_note.save
        flash[:notice] = 'ArNote was successfully created.'
        format.html { redirect_to(@ar_note) }
        format.xml  { render :xml => @ar_note, :status => :created, :location => @ar_note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ar_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ar_notes/1
  # PUT /ar_notes/1.xml
  def update
    @ar_note = ArNote.find(params[:id])

    respond_to do |format|
      if @ar_note.update_attributes(params[:ar_note])
        flash[:notice] = 'ArNote was successfully updated.'
        format.html { redirect_to(@ar_note) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ar_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_notes/1
  # DELETE /ar_notes/1.xml
  def destroy
    @ar_note = ArNote.find(params[:id])
    @ar_note.destroy

    respond_to do |format|
      format.html { redirect_to(ar_notes_url) }
      format.xml  { head :ok }
    end
  end
end
