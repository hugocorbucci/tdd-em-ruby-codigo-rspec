#encoding: UTF-8
require 'timeout'

class ComLimiteDeTempo
  def initialize(limite, objeto_limitado)
    @limite = limite
    @objeto_limitado = objeto_limitado
  end
  def method_missing(method, *args)
    Timeout::timeout(@limite) do
      @objeto_limitado.send(method, *args)
    end
  end
end
