class EntriesController < ApplicationController
	def index

  	# def oznacza jakąś metodę, małpa jest potrzebna bo oznacza te zmienne ktora maja prawo przelatywac miedzy warstwami
@entries=Entry.all
  end

  def show
  	@entry = Entry.find(params[:id])
  end
  def new
  end

 def create
    entry = Entry.create(entry_params)
    redirect_to(entry_path(entry))
  end
def destroy
    @entry = Entry.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
    end
  end

  def entry_params
    entry_params = params["entry"].permit("title", "contents")
  end

end
