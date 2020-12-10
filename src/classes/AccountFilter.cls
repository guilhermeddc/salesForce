public class AccountFilter {

  public List<Account> filterByChangeDocumentNumber(
    List<Account> newAccounts,
    Map<Id,Account> oldAccounts
  ) {
    
    List<Account> filteredAccounts = new List<Account>();

    for (Account account : newAccounts) {
      if (String.isEmpty(account.DocumentNumber__c)) {
        continue;
      }

      if (oldAccounts == null || oldAccounts.isEmpty()) {
        filteredAccounts.add(account);
        continue;
      }
    }
  }
}