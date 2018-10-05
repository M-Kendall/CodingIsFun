public virtual class bankAccount{
    
    public string name;
    public string accountNumber;
    private decimal balance;
    
    //Constructor that sets initial balance
    public bankAccount(string n, string acct, decimal b){
        
    	name = n;
    	accountNumber = acct;
    	balance = b;
    }
    
    //Deposits and increases current balance amount
    public decimal deposit(decimal dAmt) {
        
        balance += dAmt;
        return balance;
    }
    
    //Withdraws and decreases current balance amount
    public decimal withdraw(decimal wAmt) {
        
        balance -= wAmt;
        return balance;  
    }
    private void setBalance(decimal amt)
    {
        balance = amt;
    }
    public decimal getBalance()
    {
        return balance;
    }
}