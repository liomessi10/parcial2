package pruebaparaparcial

class BootStrap {

    def init = { servletContext ->

        def medico = new Medico(
            nombre: "Juan" ,
            dni: "37543321" ,
            domicilio: "Sarmiento 895" ,
            matricula: 2018 ,
            especialidad: "Traumatologia" ,
        ).save(flush:true)

        def medico2 = new Medico(
            nombre: "Pedro" ,
            dni: "37765876" ,
            domicilio: "Peru 395" ,
            matricula: 2986 ,
            especialidad: "Kinesiologia" ,
        ).save(flush:true)

        def paciente = new Paciente(
            nombre: "Gustavo" ,
            dni: "40222111" ,
            domicilio: "Polcos" ,
            obrasocial: "OSEP" ,
        ).save(flush:true)

        def paciente2 = new Paciente(
            nombre: "Abel" ,
            dni: "12333444" ,
            domicilio: "Valle Viejo" ,
            obrasocial: "OSEP" ,
        ).save(flush:true)

        def paciente3 = new Paciente(
            nombre: "Stefano" ,
            dni: "50656323" ,
            domicilio: "San Antonio" ,
            obrasocial: "OSDE" ,
        ).save(flush:true)

        def turno = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-11-10') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)

        def turno2 = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-11-15') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)

        def turno3 = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-10-10') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)

        def turno4 = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-09-10') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)

        def turno5 = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-05-10') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)

        def turno6 = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-11-22') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)

        def turno7 = new Turno(
            fecha: Date.parse('yyyy-MM-dd','2018-11-24') ,
            hora: "14:00" ,
            estado: "Pendiente" ,
            paciente: paciente ,
            medico: medico ,
        ).save(flush:true)









    }
    def destroy = {
    }
}
