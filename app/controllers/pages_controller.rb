class PagesController < ApplicationController
  def index
  end

  def contacto
  end

  def articulo
    @articulo = Articulo.all
  end
  
  def new
    @articulo = Articulo.new
  end
  
  def create
    data_articulo = params.require(:articulo).permit(:titulo, :contenido)
    @articulo = Articulo.new(data_articulo)
    if @articulo.save
        redirect_to articulo_path
    else
        render :new
    end
  end

end
