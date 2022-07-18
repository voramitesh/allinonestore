import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  int i= 0;
  List l1=["https://avatars.mds.yandex.net/i?id=5b4e26bac824bd36aee78dac6f2d845e-5644585-images-thumbs&n=13",
          "https://avatars.mds.yandex.net/i?id=fcaa28e599d7aee4f2d1cc98e663983a-5128282-images-thumbs&n=13",
          "https://avatars.mds.yandex.net/i?id=02e455dc3ddbdd82e24ed946d177a6a1-5235574-images-thumbs&n=13",
          "https://avatars.mds.yandex.net/i?id=0ff9a023236d61355d6d0733747ad2de-4884602-images-thumbs&n=13",
          "https://avatars.mds.yandex.net/i?id=3c5d9a77d0485b0a9fbd41adfbe10eeb-4012553-images-thumbs&n=13",
          "https://avatars.mds.yandex.net/i?id=67c1f768560c72f5c0e0b1238c8ff362-5624761-images-thumbs&n=13",
          "https://avatars.mds.yandex.net/i?id=e57d19590d8b83a485c737f46cb1ce09-4365178-images-thumbs&n=13",
           ];
  List l2=["Instagram","Facebook","Messanger","Whatsapp","Amazone","Flipkart","IRCTC",""];
  List l3=[
    "https://www.instagram.com/",
    "https://www.facebook.com/",
    "https://www.messenger.com/",
    "https://www.whatsapp.com/",
    "https://www.amazon.in/",
    "https://www.flipkart.com/",
    "https://www.irctc.co.in/nget/train-search",
  ];
  List<Modaldata> l4 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (i = 0; i < l1.length; i++) {
      Modaldata modaldata = Modaldata(l3[i]);
      l4.add(modaldata);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(backgroundColor: Colors.amber,title: Text("All In One Store",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold) ,),
        centerTitle: true),
        body: Container(
          child: ListView.builder(scrollDirection: Axis.vertical,
              itemCount: l1.length,itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context,'/second',
                          arguments: l3[index]);
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Colors.black, width: 3)),
                      child: Image.network("${l1[index]}"),
                    ),
                  ),
                  SizedBox(height: 10,width:20,),
                  Expanded(
                    child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                              "${l2[index]}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),
                            ))),
                  ),
                ],
              ),
            );
           })
        ),
      ),
    );
  }
}
class Modaldata {
  String link;

  Modaldata(this.link);
}
