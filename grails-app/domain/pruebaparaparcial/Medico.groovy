package pruebaparaparcial

class Medico extends Persona {
    Integer matricula
    String especialidad

    static hasMany = [turnos: Turno]

    static constraints = {
    }
}
