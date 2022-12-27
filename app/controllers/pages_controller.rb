class PagesController < ApplicationController
  def index
  
  end

  def contacto
  
  end

  def articulo
    #@articulo = Articulo.all
    @articulo = Articulo.order(:articulo).page(params[:page])
  end
  
  def new
    @articulo = Articulo.new
  end
  
  def create
   # data_articulo = params.require(:articulo).permit(:titulo, :contenido)
   # @articulo = Articulo.new(data_articulo)
   @articulo = Articulo.new(article_params)
    if @articulo.save
        redirect_to articulo_path
    else
        render :new
    end
  end

end

def show
    @articulo = Articulo.find(params[:id])
end
  

def edit
    @articulo = Articulo.find(params[:id])
end
  

def update
    @articulo = Articulo.find(params[:id])
      if @articulo.update(articulo_params)
          redirect_to articulos_path, notice: 'Articulo actualizado'
      else
        render :edit, status: :unprocessable_entity 
      end
 end
  

def delete
  @articulo = Articulo.find(params[:id])
  @articulo.destroy
  redirect_to articulos_path, notice: 'Articulo eliminado satisfactoriamente'
end
  

private
  
def articulo_params
  params.require(:articulo).permit(:titulo, :contenido)
end
