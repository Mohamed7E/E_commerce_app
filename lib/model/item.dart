class Item {
  String imgpath;
  double price;
String location;
String name;
  Item({required this.name, required this.imgpath,required this.price,this.location="Egypt"});
  
}

final List<Item> items =[
  Item(name :"hors",imgpath:"assets/imge/1.jpg" , price: 12892.99 ,location: "dddd"),
  Item(name :"hors2",imgpath:"assets/imge/3.jpg" , price: 165422.99),
  Item(name :"hors3",imgpath:"assets/imge/4.jpg" , price: 12567.99),
    Item(name :"hors4",imgpath:"assets/imge/8.jpg" , price: 15422.99),
  Item(name :"hors5",imgpath:"assets/imge/12.jpg" , price: 12962.99),
  Item(name :"hors6",imgpath:"assets/imge/145.jpg" , price: 12142.99),
    Item(name :"hors7",imgpath:"assets/imge/it.jpg" , price: 12782.99),
  Item(name :"hors8",imgpath:"assets/imge/s.jpg" , price: 12942.99),
  Item(name :"hors9",imgpath:"assets/imge/s1.jpg" , price: 12352.99),
 ]; 