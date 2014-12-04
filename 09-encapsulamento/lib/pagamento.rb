#encoding: UTF-8
class Pagamento
  attr_reader :valor, :forma_de_pagamento
  def initialize(valor, forma_de_pagamento)
    @valor = valor
    @forma_de_pagamento = forma_de_pagamento
  end
end
