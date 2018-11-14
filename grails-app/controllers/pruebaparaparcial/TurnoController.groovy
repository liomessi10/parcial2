package pruebaparaparcial

class TurnoController {

    def index() { }

    def listarTurnosPaciente(){
        def paciente = Paciente.get(session.paciente.id)
        def fechaDesde = Date.parse('yyyy-MM-dd',params.fechaDesde)
        def fechaHasta = Date.parse('yyyy-MM-dd',params.fechaHasta)
        // def listaTurnos = Turno.findAllByFechaBetweenAndPaciente(params.fechaDesde,params.fechaHasta,paciente)
        def listaTurnos = Turno.findAll("from Turno as t where (t.fecha between :fechaDesde and :fechaHasta ) and t.paciente.dni = :dni",
            [fechaDesde: fechaDesde, fechaHasta: fechaHasta, dni: paciente.dni])
        def map = [listaTurnos: listaTurnos, paciente: paciente, fechaDesde: fechaDesde, fechaHasta: fechaHasta]
        render(view: "listaTurnos", model: map)
    }
    
    def login(){
        def paciente = Paciente.findByNombre(params.nombre)
        if (paciente){ 
            session.paciente = paciente
            render(view:"busquedaTurnos", model: [paciente:paciente])
        }else{
            render(view:"index")
        }
    }

}
