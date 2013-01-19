class RegalosController < ApplicationController

  respond_to :html

  def index
    @regalos = Regalo.available
  end

  def admin_index
    @regalos = Regalo.all
  end

  def new
    @regalo = Regalo.new
  end

  def create
    @regalo = Regalo.new(params[:regalo])
    @regalo.save
    respond_with @regalo, :location => wirsinds_path
  end

  def edit
    @regalo = Regalo.find(params[:id])
  end

  def update
    @regalo = Regalo.find(params[:id])
    @regalo.update_attributes(params[:regalo])
    respond_with @regalo, :location => regalos_path
  end

  def destroy
    @regalo = Regalo.find(params[:id])
    @regalo.delete
    respond_with @regalo, :location => wirsinds_path
  end
end
