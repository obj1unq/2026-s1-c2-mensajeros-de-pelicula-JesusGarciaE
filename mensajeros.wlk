/** First Wollok example */
// object wollok {
// 	method howAreYou() {
// 		return 'I am Wolloktastic!'
// 	}
// }
// object destinos {
// 	method 
// }

object paquete{
	//determinar si el paquete puede ser entregado por una persona en un determinado destino
	var mensajero = jeanGray
	var destino = puenteDeBrooklyn
	var pagoDelPaquete = true
	method mensajero(_mensajero){
		mensajero = _mensajero
	}
	method destino(_destino){
		destino = _destino
	}
	// method enviarPaquete(){
	// 	return if(not (self.estaPago())){
	// 		self.error("El paquete no puede ser entregado porque no se ha pagado")
	// 	}
	// 	else if(not (destino.puedeEntrar(mensajero))){
	// 		self.error("El paquete no puede ser entregado porque el mensajero no puede entrar al destino")
	// 	}
	// 	else{
	// 		return true
	// 	}
	// }
	method puedeEnviarPaquete(){
		return self.estaPago() && destino.puedeEntrar(mensajero)
	}
	
	method estaPago(){
		return self.paquetePagado() 
	}

	method paquetePagado(){
		return pagoDelPaquete
	}
	method  pagoDelPaquete(_pagoDelPaquete){
		pagoDelPaquete = _pagoDelPaquete
	}
}

object puenteDeBrooklyn{
	//deja entrar todo aquello que pese menos de 1000 kg
	method puedeEntrar(mensajero){
		return (mensajero.peso() < 1000)
		
	}
}


object laMatrix {
	//deja entrar a todo aquel que pueda realizar una llamada
	method puedeEntrar(mensajero){
		return (mensajero.validarCredito())
	}
}

object jeanGray {
	//puede llamar siempre  pesa 65kg
	const peso = 65
	const credito =100
	method peso(){
		return peso
	}
		method validarCredito(){
		return credito > 0
	}
}

object neo {
	//vuela asi que no tiene peso y pude variar si llama o se queda sin credito 
	const peso = 0
	var credito = 100
	method peso(){
		return peso
	}
	method validarCredito(){
		return credito > 0
	}
	method credito(_credito){
		credito = _credito
	}
}


object saraConor {
  //no puede llamar a nadie su peso es de su propio peso + peso del vehiculo que maneja
	var pesoSara = 60

	var vehiculo = camion
	const credito = 0
	method peso(){
		return pesoSara + vehiculo.peso()
	}
	method pesoSara(_pesoSara){
		pesoSara = _pesoSara
	}
	method vehiculo(_vehiculo){
		vehiculo = _vehiculo
	}
		method validarCredito(){
		return credito > 0
	}
}

object camion {
	method peso(){
		return 500
	}
}

object camionAcoplado {
	method peso(){
		return 1000
	}
}

object moto {
	method peso(){
		return 100
	}
}