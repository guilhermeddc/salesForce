public virtual with sharing class AccountTH extends TriggerHandler {
  
  List<Account> newAccount;

  Map<Id,Account> oldAccount;

  public AccountTH() {
    this((List<Account>) Trigger.new, (Map<Id,Account>) Trigger.oldMap);
  }

  public AccountTH(List<Account> newAccount, Map<Id,Account> oldAccount) {
    this.newAccount = newAccount;
    this.oldAccount = oldAccount;
  }

  override
  public void beforeInsert() {

  }

  override 
  public void beforeUpdate() {
     
  }

  virtual
  override
  public void afterInsert() {
    System.debug('Trigger de Conta adicionada' + Trigger.operationType);
    System.debug(JSON.serialize(newAccount));
  }

  virtual
  override
  public void afterUpdate() {
    System.debug('Trigger de Conta adicionada' + Trigger.operationType);
    System.debug(JSON.serialize(newAccount));
    System.debug(JSON.serialize(oldAccount));
  }
}