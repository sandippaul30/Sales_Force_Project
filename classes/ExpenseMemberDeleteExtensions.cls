public with sharing class ExpenseMemberDeleteExtensions
{
      public ApexPages.StandardController controller{get;set;}
      public Expense_Member__c em;
      public ExpenseMemberDeleteExtensions(ApexPages.StandardController controller) {
        this.controller = controller;
        em= (Expense_Member__c )controller.getRecord();
    }
    public PageReference delete1()
    {
        delete em;
        return null;
    }
      
}