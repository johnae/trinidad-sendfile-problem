class TestsController < ApplicationController

  respond_to :html

  # GET /tests
  # GET /tests.json
  def index
    @files = ['test1.jpg','test2.jpg','test3.jpg']
    respond_to do |format|
      format.html
    end
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    respond_with(params[:id]) do |format|
      format.any {
        send_a_file("/images/#{params[:id]}.jpg")
      }
    end
  end
end
