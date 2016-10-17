public with sharing class ExpenseEXT {
    public expense__c expObj{get;set;}
    public List<Expense_Member__c> memExp{get;set;}

    public ExpenseEXT(ApexPages.StandardController controller) {
        expObj = (expense__c)controller.getRecord();
        memExp = getExpMembers();
    }
    
    public List<Expense_Member__c> getExpMembers(){
        return [Select contribution_amount__c,Member__r.First_Name__c from Expense_Member__c where Expense_Amount__c =: expObj.Id];
    }
}