package services

import medico.Medico
import caso.Caso
import status.Status
import caso.HistorialCaso

class TriajeService {

    static transactional = true

    def getGenero(Medico medico) {

           def trato
            if(medico.sexo=="Femenino"){
                trato = "Dra."
            }
            if(medico.sexo=="Masculino"){
                trato = "Dr."
            }   
            
        return trato
    }
    
    def getAllCasosPorStatus(Status status){
        
        List casoInstanceList = [] 
        def casoInstance = Caso.findAllByStatus(status)
        casoInstance.each{
            casoInstanceList.add(it)
        }

        return casoInstanceList
    }
    
}
