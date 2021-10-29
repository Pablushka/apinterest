class PablitoController < ApplicationController

  def suma_random
    # calcular algo
    calculo = 2+6
    render json: {resultado: calculo}, status: :ok
  end

  def sumar()

      numeroA = valid_params[:numeroA]
      numeroB = valid_params[:numeroB]

      calculo = numeroA + numeroB

      render json: {resultado: calculo}, status: :ok
  end
  
  # devuleve on objeto con los parametros filtrados
  def valid_params
    params.require(:pablito).permit(:numeroA, :numeroB) # ==> [parametro: valor]
  end

end
