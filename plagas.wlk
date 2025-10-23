import example.*

class Plaga {
  var property poblacion
  
  method transmiteEnfermedades() = poblacion >= 10

  method atacar(unElemento){
    unElemento.recibirAtaque(self)
    poblacion += poblacion * 1.1
  }

}

class PlagaCucaracha inherits Plaga {
  var property pesoPromedio
  
  method nivelDeDanio() = poblacion / 2
  
  override method transmiteEnfermedades() = (pesoPromedio >= 10) && super()

   override method atacar(unElemento){
    super(unElemento) 
    pesoPromedio += 2
  }
}

class PlagaMosquito inherits Plaga {
  method nivelDeDanio() = poblacion
  override method transmiteEnfermedades() = poblacion % 3 == 0 && super()
}

class PlagaPulga inherits Plaga {
  method nivelDeDanio() = poblacion * 2
}

class PlagaGarrapata inherits Plaga {
  method nivelDeDanio() = poblacion * 2


override method atacar(unElemento){
    unElemento.recibirAtaque(self)
    poblacion *= 1.2
  }
}