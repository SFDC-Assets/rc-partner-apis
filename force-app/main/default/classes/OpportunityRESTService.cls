@RestResource(urlMapping='/Opportunities/*')
global with sharing class OpportunityRESTService {
    
    @HttpGet
    global static List<Opportunity> getOpportunities() {
        RestRequest request = RestContext.request;
        
        List<Opportunity> result = [SELECT Name,StageName FROM Opportunity];
        
        System.debug('OpportunityRESTService >> getOpportunities: ' + result);        
        return result;
    }
    
}