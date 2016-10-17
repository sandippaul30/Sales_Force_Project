public with sharing class ExpenseMemberEditExtensions
{
      public ApexPages.StandardController controller{get;set;}
      public Expense_Member__c em;
      public ExpenseMemberEditExtensions(ApexPages.StandardController controller) {
        this.controller = controller;
        em= (Expense_Member__c )controller.getRecord();
    }
    public PageReference edit()
    {
        update em;
        return null;
    }
      
}