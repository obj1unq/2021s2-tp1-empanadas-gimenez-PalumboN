object galvan {
	var sueldoFijo = 15000
	// ¿Qué me guardo y qué calculo?
	var balance = 0
	
	method sueldo() {
		return sueldoFijo
	}
	method sueldo(nuevoSueldo) {
		sueldoFijo = nuevoSueldo
	}
	
	method dinero() {
		return 0.max(balance)
	}
	method deuda() {
		return 0.min(balance).abs()
	}
	method gastar(cantidad){
		balance -= cantidad
	}
	method cobrar(){
		balance += self.sueldo()
	}
	
}


object baigorria {

	const valorEmpanada = 15
	// Pre vs Post CÁLCULO
	var empanadasVendidas = 0
	var totalCobrado = 0

	// ¿Se guarda o se calcula?
	method sueldo() {
		return empanadasVendidas * valorEmpanada
	}

	method vender(cantidad) {
		empanadasVendidas += cantidad
	}
	
	// Punto 2
	method cobrar() {
		// ENCAPSULAMIENTO: La lógica sobre las cosas de Baigorria 
		// están en el objeto baigorria
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}

	// Y con Galván?
	method totalCobrado() {
		return totalCobrado
	}

}

object gimenez {

	var fondo = 300000

	method pagarSueldo(empleado) {
		// POLIMORFISMO
		fondo -= empleado.sueldo()
		empleado.cobrar() // DELEGAR en el empleado
	}

	method fondo() {
		return fondo
	}

}

// Un empleado para Gimenez es un objeto que entiende los mensajes:
//  sueldo()
//  cobrar()

// Interfaz (del empleado) -> El conjunto de mensajes 
