public virtual with sharing class AccountTH extends TriggerHandler {
  
  List<Account> newAccount;

  Map<Id,Account> oldAccount;

  AccountFilter filter;

  AccountValidator validator;

  public AccountTH() {
    this((List<Account>) Trigger.new, (Map<Id,Account>) Trigger.oldMap);
  }

  public AccountTH(List<Account> newAccount, Map<Id,Account> oldAccount) {
    this.newAccount = newAccount;
    this.oldAccount = oldAccount;

    this.filter = new AccountFilter();
    this.validator = new AccountValidator();
  }

  override
  public void beforeInsert() {
    validateDocumentNumber();
  }

  override 
  public void beforeUpdate() {
    validateDocumentNumber();
  }

  virtual
  public void validateDocumentNumber() {
    List<Account> filteredAccounts = this.filter.filterByChangeDocumentNumber(
      newAccount, 
      oldAccount
    );

    this.validator.validateDocumentNumber(filteredAccounts);
  }
}