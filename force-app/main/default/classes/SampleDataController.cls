public with sharing class SampleDataController {
    @AuraEnabled
    public static void importSampleData() {
        delete [SELECT Id FROM Case];
        delete [SELECT Id FROM Property__c];
        delete [SELECT Id FROM Broker__c];
        delete [SELECT Id FROM Contact];

        insertBrokers();
        insertProperties();
        insertContacts();
    }

    private static void insertBrokers() {
        StaticResource brokersResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'sample_data_brokers'
        ];
        String brokersJSON = brokersResource.body.toString();
        List<Broker__c> brokers = (List<Broker__c>) JSON.deserialize(
            brokersJSON,
            List<Broker__c>.class
        );
        insert brokers;
    }

    private static void insertProperties() {
        StaticResource propertiesResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'sample_data_properties'
        ];
        String propertiesJSON = propertiesResource.body.toString();
        List<Property__c> properties = (List<Property__c>) JSON.deserialize(
            propertiesJSON,
            List<Property__c>.class
        );
        randomizeDateListed(properties);
        insert properties;
    }

    private static void insertContacts() {
        StaticResource contactsResource = [
            SELECT Id, Body
            FROM StaticResource
            WHERE Name = 'sample_data_contacts'
        ];
        String contactsJSON = contactsResource.body.toString();
        List<Contact> contacts = (List<Contact>) JSON.deserialize(
            contactsJSON,
            List<Contact>.class
        );
        insert contacts;
    }

    private static void randomizeDateListed(List<Property__c> properties) {
        for (Property__c property : properties) {
            property.Date_Listed__c =
                System.today() - Integer.valueof((Math.random() * 90));
        }

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
