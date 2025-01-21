void main(){
  String customerName = "Ali";
  String date = "21/01/2025";
  String storeName = "Ali Store";

  //Fruit Prices per Kg
  int applePrice = 10;
  int orangePrice = 50;
  int grapesPrice = 100;

  //Fruits Quantity
  int appleQuantity = 4;
  int orangeQuantity = 3;
  int grapesQuantity = 5;


  //Calculate Total Bill
  int total = (applePrice * appleQuantity) + (orangePrice * orangeQuantity) + (grapesPrice * grapesQuantity);
  double discount = total/10;
  double payable = total - discount;


  print("===================================================");

  print("=============Customer Name: $customerName ===================");

  print("=============Date: $date =====================");

  print("=============Store Name: $storeName ================");

  print("===================================================");

  print("Sr    Item      Per/Unit       Quantity       Total");
  print("1     Apple     $applePrice             $appleQuantity KG           ${applePrice * appleQuantity}");
  print("2     Orange    $orangePrice             $orangeQuantity KG           ${orangePrice * orangeQuantity}");
  print("3     Grapes    $grapesPrice            $grapesQuantity KG           ${grapesPrice * grapesQuantity}");


  print("===================================================");

  print("Total Bill: $total");
  print("Discount(10%): $discount");
  print("Payable: $payable");


  print("===================================================");
  print("Thanks for Shopping Here");


}