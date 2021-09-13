object otroGalvan {
	var sueldoFijo = 15000
	// Guardarse 2 atributos
	var dinero = 0
	var deuda = 0

	method sueldo() {
		return sueldoFijo
	}
	method sueldo(nuevoSueldo) {
		sueldoFijo = nuevoSueldo
	}

	method dinero() {
		return dinero
	}
	method deuda() {
		return deuda
	}
	
//	method gastar(cantidad){
//		if (dinero <= cantidad) {
//			deuda += (cantidad - dinero)
//			dinero = 0
//		} else {
//			dinero = dinero - cantidad
//		}
//	}

//	method cobrar(){
//		if (deuda <= sueldoFijo) {
//			dinero += (sueldoFijo - deuda)
//			deuda = 0
//		} else {
//			deuda = deuda - sueldoFijo
//		}
//	}
	
	method cobrar() {
   		dinero += 0.max(self.sueldo() - deuda)
		deuda -= deuda.min(self.sueldo())
	}

	method gastar(cantidad) {
		deuda += 0.max(cantidad - dinero)
		dinero -= cantidad.min(dinero)
	}
	
//    method gastar(cantidad){
//        dinero -= cantidad
//        deuda -= dinero.min(0)
//        dinero -= dinero.min(0)
//    }
	
}