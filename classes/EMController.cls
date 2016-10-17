public class EMController
{
    public List<Expense_Member__c> expenseMembers{get;set;}
    public PageReference fetchRecord()
    {
        expenseMembers = [select Id,Name,Contribution_Amount__c,Expense_Amount__r.Amount__c,Member__r.First_Name__c,Member__r.Last_Name__c,Member_Email__c from Expense_Member__c];
        return null;
    }
    
    public PageReference Redirect()
    {
        String id= System.currentPagereference().getParameters().get('id');
        
        PageReference reRend = new PageReference('/apex/ExpenseMemberUpdate?id='+id);
        //reRend .getParameters().put('id','i.id');
        reRend.setRedirect(true);
        return reRend;
    }
    
    public PageReference toRedirect()
    {
        String id= System.currentPagereference().getParameters().get('id');
        
        PageReference reRend = new PageReference('/apex/ExpenseMemberDelete?id='+id);
        //reRend .getParameters().put('id','i.id');
        reRend.setRedirect(true);
        return reRend;
    }
}