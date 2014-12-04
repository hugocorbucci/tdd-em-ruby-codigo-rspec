#encoding: UTF-8
require_relative './leitor_de_xml.rb'
require_relative './escritor_pela_serial.rb'

class Copiadora
  def copiar
    leitor = LeitorDeXML.new
    escritor = EscritorPelaSerial.new
    while leitor.tem_caracteres
      escritor.escreve leitor.le_caracteres
    end
  end
end
