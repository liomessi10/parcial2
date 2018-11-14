package pruebaparaparcial

class Paciente extends Persona {
    String obrasocial

    static hasMany = [turnos: Turno]

    static constraints = {
        obrasocial(inList: ['OSEP','OSDE','JERARQUICO'])
    }
}
