public with sharing class CaseBO {
    
    public static void naoAtivarContratoTipoSinistro(List<Case> lstCasosTriggers, Map<Id,Case> mapOldCase){
        /*
    3 - Crie um Apex Trigger que, ao criar ou atualizar um registro de Caso (Case) com o tipo “Sinistro”, valide se a conta vinculada
        possui um Contrato (Contract) ativo. Caso não possua, exibir uma mensagem que ele não pode abrir um sinistro sem um Contrato (Contract) ativo.
        Obs.: Utilizar o método addError.
*/
    
    
    List<Case> lstCasosAtivado = new List<Case>();
    List<Task> lstTaskParaCriar = new List<Task>();
    Set<Id> setIdCasos = new Set<Id>();
    Map<Id,Boolean> mapEstaComContratos = new Map<Id,Boolean>();
    Map<Id, List<Contract>> mapCasosComContrato = new Map<Id, List<Contract>>();

    if(!Trigger.isInsert){
        for(Case casoNovo : lstCasosTriggers){
            Case casoAntigo = mapOldCase.get(casoNovo.Id);
            if(casoAntigo.Type != 'Sinistro' && casoNovo.Type == 'Sinistro'){
                lstCasosAtivado.add(casoNovo);
                setIdCasos.add(casoNovo.AccountId);
            }
        }
    }else {
        for(Case casoNovo : lstCasosTriggers){

            if(casoNovo.Type == 'Sinistro'){

                lstCasosAtivado.add(casoNovo);
                setIdCasos.add(casoNovo.AccountId);

            } 
        }

    }

    

    if(lstCasosAtivado.isEmpty()){
        return;
    }

    

    List<Contract> lstContratos = ContractDAO.buscarCasosPorIdConta(setIdCasos);
    for(Contract contrato : lstContratos){
        if(!mapEstaComContratos.containsKey(contrato.AccountId) || contrato.Status != 'Activated'){
            mapCasosComContrato.put(contrato.AccountId, new List<Contract>());
        }
        mapCasosComContrato.get(contrato.AccountId).add(contrato);
    }
    
    for(Case caso : lstCasosAtivado){
        if(!mapCasosComContrato.containsKey(caso.accountId)){
            caso.addError('Não é possível ter um Caso do Tipo Sinistro sem um Contrato, por favor, revise essa informação!');
        }
    }

    }
}