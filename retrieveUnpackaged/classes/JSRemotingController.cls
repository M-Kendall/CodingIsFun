public class JSRemotingController {

    public string acctId {get; set;}
    public string selectedHeader{get; set;}
    
    public List<Account> accounts {get; set;}
    public Account acct;
    
    public List<Contact> contacts {get; set;}
    public string selectedField {get; set;}
    
    public string nameSortOrder = 'ASC';
    public string industrySortOrder = 'ASC';
    public string ratingSortOrder = 'ASC';
     
    //Constructor loads initial accounts in Visualforce page
    public JSRemotingController() {
        getAllAccounts();
    }
    
    public PageReference getAllAccounts() {
        accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account];
        return ApexPages.currentPage();
    }
    
    //Takes an account Id and queries for contacts with a matching Id
    public void getContactsByAccountId() {
        contacts = [SELECT FirstName, LastName, Email, Phone FROM Contact WHERE AccountId = :acctId];
    }
    
    //Calling this method by adding it to the SelectList value
    public void sortMethod(){
        if (selectedField == 'Account Name' && nameSortOrder == 'ASC'){
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Name DESC];
            
            nameSortOrder = 'DESC';
            industrySortOrder = 'DESC';
            ratingSortOrder = 'DESC';
        }
        else if (selectedField == 'Account Name' && nameSortOrder == 'DESC'){      
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Name];
            
            nameSortOrder = 'ASC';
            industrySortOrder = 'DESC';
            ratingSortOrder = 'DESC';
        }
        else if (selectedField == 'Industry' && industrySortOrder == 'ASC'){      
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Industry DESC];
            
            industrySortOrder = 'DESC';
            nameSortOrder = 'DESC';
            ratingSortOrder = 'DESC';
        }
        else if (selectedField == 'Industry' && industrySortOrder == 'DESC'){
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Industry];
            
            industrySortOrder = 'ASC';
            nameSortOrder = 'DESC';
            ratingSortOrder = 'DESC';
        }
        else if (selectedField == 'Rating' && ratingSortOrder == 'ASC'){
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Rating DESC];
            
            ratingSortOrder = 'DESC';
            nameSortOrder = 'DESC';
            industrySortOrder = 'DESC';
        }
        else if (selectedField == 'Rating' && ratingSortOrder == 'DESC'){
            accounts = [SELECT Id, Name, BillingState, Industry, Rating, Type, CreatedDate FROM Account ORDER BY Rating];
            
            ratingSortOrder = 'ASC';
            nameSortOrder = 'DESC';
            industrySortOrder = 'DESC';
        }
    }
}