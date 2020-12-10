trigger Account on Account (
  before insert, 
  before update, 
  after insert, 
  after update
) {

  new AccountTH().run();

  // System.debug('Trigger de Conta adicionada');

  // List<Account> newAccounts = (List<Account>) Trigger.new;

  // Map<Id, Account> oldAccounts = (Map<Id, Account>) Trigger.oldMap;

  // Account account = newAccounts.get(0);
  // if (oldAccounts.containsKey(account.Id)) {
  //   Account oldAccount = oldAccounts.get(account.Id);
    
  //   System.debug(JSON.serialize(oldAccount));
  // }


  // System.debug('New Accounts');

  // System.debug(JSON.serialize(newAccounts));

  // if (oldAccounts != null && !oldAccounts.isEmpty()) {
  //   System.debug('Old Accounts');

  //   System.debug(JSON.serialize(oldAccounts));
  // }
}