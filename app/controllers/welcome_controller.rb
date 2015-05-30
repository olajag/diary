class WelcomeController < ApplicationController
  def index
  	# def oznacza jakąś metodę, małpa jest potrzebna bo oznacza te zmienne ktora maja prawo przelatywac miedzy warstwami
@entries=Entry.all
  end
end
