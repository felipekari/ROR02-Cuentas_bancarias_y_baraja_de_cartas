require_relative 'carta'

class Baraja
  @@cartas = []

  def initialize
    13.times do |x|
      @@cartas.push(Carta.new(x+1, 'C'))
      @@cartas.push(Carta.new(x+1, 'D'))
      @@cartas.push(Carta.new(x+1, 'E'))
      @@cartas.push(Carta.new(x+1, 'T'))
    end
  end

  def barajar
    @@cartas.shuffle!
  end

  def sacar
    @@cartas.pop(1)
  end

  def repartir_mano
    @@cartas.pop(5)
  end

end

# juego = Baraja.new

# juego.barajar

# puts "Tus cartas son: #{juego.repartir_mano}"

# puts "Sacaste la carta #{juego.sacar}"