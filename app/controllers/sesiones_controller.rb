class SesionesController < ApplicationController
  def new
  end

  def create
    usuario = Usuario.authenticate(sesion_params[:mail], sesion_params[:clave])
    if usuario
      cookies[:user_id] = usuario.id #guarda en un cokkie el id del usuario
      redirect_to root_path #lleva a la raiz del sitio
    else
      flash[:error] = 'Error en los datos de inicio de sesión' #manda mensajes desde el controlador a la vista
      render :new #parq ue muestre la vista new
    end
  end

  def destroy
    cookies[:user_id] = nil
    redirect_to root_path
  end

  private
  def sesion_params
    params.require(:sesion).permit(:mail, :clave)
  end
end
