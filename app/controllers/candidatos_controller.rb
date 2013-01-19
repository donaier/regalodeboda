class CandidatosController < ApplicationController

  respond_to :html

  def index
    @candidatos = Candidato.all
  end

  def new
    @candidato = Candidato.new
  end

  def create
    @candidato = Candidato.new(params[:candidato])
    @candidato.save
  end

  def destroy
    @candidato = Candidato.find(params[:id])
    @candidato.delete
    redirect_to candidatos_path
  end
end
