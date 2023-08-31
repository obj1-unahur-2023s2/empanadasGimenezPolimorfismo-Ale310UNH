object galvan {
	var property dinero = 0
	var property sueldo = 150000
	var property totalDeuda = 0
	
	method cobrarSueldo() {
		dinero += self.sueldo()
	}
	method gastar(cuanto) {
		totalDeuda += 0.max(cuanto - dinero)
		dinero -= 0.min(dinero - cuanto)
	}
}

object baigorria {
	var cantidadDeEmpanadasVendidas
	const montoPorEmpanada = 150
	var totalCobrado = 0
	
	method totalCobrado() = totalCobrado
	method venderEmpanada() {}
	method cobrarSueldo() {
		totalCobrado += cantidadDeEmpanadasVendidas * montoPorEmpanada
		dinero += cantidadDeEmpanadasVendidas * montoPorEmpanada
	}
}

object gimenez {
	var dinero = 3000000
	
	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}