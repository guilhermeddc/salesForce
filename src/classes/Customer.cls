public virtual class Customer {
  
  public Decimal amount;
  protected Double descount;

  String name;
  String status;

  private enum CustomerType {
    PRIME, STANDARD, PREMIUM
  }

  CustomerType type;

  List<Contact> contacts;

  Set<Contact> createdContacts;

  Map<String, Contact> regionContacts = new Map<String, Contact>{
    'SP' => new Contact(FirstName = 'Bisso'),
    'SP' => new Contact(FirstName = 'Bissolino')
  };

  Map<String, List<Contact>> contactsByRegion = new Map<String, List<Contact>>{
    'SP' => new List<Contact> {new Contact(FirstName = 'Bisso')},
    'SP' => new List<Contact> {new Contact(FirstName = 'Bissolino')}
  };

  public List<Contact> filterContactsByRegion () {
    List<Contact> filteredContacts = new List<Contact>();

    for (Contact contact : contacts) {
      if (contact.Name == 'XXXX') {
        filteredContacts.add(contact);
      }
    }

    return filteredContacts;
  }

  virtual
  public void save() {

  }
}