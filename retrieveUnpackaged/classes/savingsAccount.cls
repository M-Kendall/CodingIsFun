public class savingsAccount extends bankAccount {
    
    private decimal sBalance;
    
    public savingsAccount(string sName, string sAcct, decimal sBalance){
        super(sName, sAcct, sBalance);
    }
    
	public decimal sDeposit(decimal sDepAmt) {
        
        sBalance += sDepAmt;
        return sBalance;
    }
}