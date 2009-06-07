class Notes < Controller
  engine :Haml

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end
end
