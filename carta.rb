class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
        raise ArgumentError, 'numero debe ser un entero' unless numero.kind_of?(Integer)
        raise RangeError, 'numero debe estar en el rango de 1 a 13' unless numero >= 1 && numero <= 13
        raise ArgumentError, 'pinta debe ser una letra entre C, D, E o T' unless pinta == 'C' || pinta == 'D' || pinta == 'E' || pinta == 'T'
    end

end