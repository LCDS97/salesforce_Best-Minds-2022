public with sharing class OpportunityDAO {
    public static List<Opportunity> recuperarOportunidadesPorIdConta (Set<Id> setAccountsId){
        return [
            SELECT Id, AccountId FROM Opportunity WHERE AccountId IN :setAccountsId
        ];
    }
}
