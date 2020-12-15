class Usuario
    attr_accessor :cuentas_bancarias

    def initialize(nombre_usuario, cuenta_bancaria)
        @nombre_usuario = nombre_usuario
        @cuentas_bancarias = []
        @cuentas_bancarias.push cuenta_bancaria
    end

    def saldo_total
        saldo_total = @cuentas_bancarias.sum { |s| s.saldo}
    end
end

class CuentaBancaria
    attr_accessor :saldo

    def initialize(nombre_banco, numero_cuenta, saldo=0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_destino)
        @saldo -= monto
        cuenta_destino.saldo += monto
    end
end

#Transferencia de una cuenta a otra

cuenta1 = CuentaBancaria.new('Banco Estado', '12345678', 5000)
cuenta2 = CuentaBancaria.new('Banco de Chile', '00012345', 5000)

puts "Cuentas de prueba"
puts "#{cuenta1} Saldo:#{cuenta1.saldo} \n#{cuenta2} Saldo:#{cuenta2.saldo}"

cuenta1.transferir(5000, cuenta2)

puts "\nTransferencia de 5000 desde Cuenta 1 a Cuenta 2"
puts "#{cuenta1} Saldo:#{cuenta1.saldo} \n#{cuenta2} Saldo:#{cuenta2.saldo}"

#Metodo saldo_total Usuario

felipe = Usuario.new(felipe, cuenta2)

cuenta3 = CuentaBancaria.new('BCI', '999999', 2500)

felipe.cuentas_bancarias.push(cuenta3)

puts "\nCuentas del usuario Felipe:"
felipe.cuentas_bancarias.each {|x| puts "#{x} Saldo: #{x.saldo}"}

puts "\nSaldo total de cuentasde usuario Felipe: #{felipe.saldo_total}"