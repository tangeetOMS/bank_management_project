import 'bank_management.dart';

void main(){
  Account person=Account(username: 'Tangeet Hasan', address: 'Dhaka');
  person.displayAccount();
  person.deposit(20000);
  person.displayAccount();
  person.withDraw(1000);
  person.displayAccount();
}