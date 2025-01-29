@isTest
private class TestSampleDataController {
    @isTest
    static void importSampleData() {
        Test.startTest();
        SampleDataController.importSampleData();
        Test.stopTest();

        Integer propertyNumber = [SELECT COUNT() FROM Property__c];
        Integer brokerNumber = [SELECT COUNT() FROM Broker__c];
        Integer contactNumber = [SELECT COUNT() FROM Contact];

        System.assert(propertyNumber > 0, 'Expected properties were created.');
        System.assert(brokerNumber > 0, 'Expected brokers were created.');
        System.assert(contactNumber > 0, 'Expected contacts were created.');
    }
public void validator(Map<String,Object> a1, Map<String,String> a2, Map<String,String> a3, List<CC_TrazaInt__c> oListTraza, CC_InterfaceSettings__mdt oCfgInt)
    {

        // Recuperar el grupo por defecto.
        String sUserId = UserInfo.getUserId();
        Set<Id> c2 = new Set<Id>();  
        Boolean max = false;
        String password = 'tst';
        
        for (String key : a1.keySet())
        {   
            Boolean oListCases = sClave.contains('_Cases');
            if (a1.get(sClave) != null && oListCases == false)
            {
                Map<String,String> oDataInc = (Map<String,String>)oAgrupadores.get(sClave);
                for (CC_Grupo_Colaborador_Contact__c query : [SELECT CC_Usuario__r.Id FROM CC_Grupo_Colaborador_Contact__c WHERE CC_Grupo_Colaborador__r.id = 0]){
                    c2.add(query.CC_Usuario__r.Id);  
                }
            }
        }        
        return;
    }
}
