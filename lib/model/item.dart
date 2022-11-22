class Item {
  String imgpath;
  double price;
String location;
  Item({required this.imgpath,required this.price,this.location="Egypt"});
  
}

final List<Item> items =[
  Item(imgpath:"assets/imge/1.jpg" , price: 12892.99 ,location: "dddd"),
  Item(imgpath:"assets/imge/3.jpg" , price: 165422.99),
  Item(imgpath:"assets/imge/4.jpg" , price: 12567.99),
    Item(imgpath:"assets/imge/8.jpg" , price: 15422.99),
  Item(imgpath:"assets/imge/12.jpg" , price: 12962.99),
  Item(imgpath:"assets/imge/145.jpg" , price: 12142.99),
    Item(imgpath:"assets/imge/it.jpg" , price: 12782.99),
  Item(imgpath:"assets/imge/s.jpg" , price: 12942.99),
  Item(imgpath:"assets/imge/s1.jpg" , price: 12352.99),
 ]; 