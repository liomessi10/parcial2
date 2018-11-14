package pruebaparaparcial

class Turno {
    Date fecha
    String hora
    String estado

    static belongsTo = [paciente: Paciente, medico: Medico]

    static constraints = {
        estado(inList: ['Atendido','Pendiente','Cancelado'])
    }
}
