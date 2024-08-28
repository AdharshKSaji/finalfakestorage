import 'package:finalfakestorage/controller/homescreencontroller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
     final Provider = context.watch<HomeScreenController>();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,leading: CircleAvatar(radius: 20,child: 
      Icon(Icons.person),),centerTitle: true,title: Text("MyFakeStore",
      style: TextStyle(
        color: Colors.white
      ),),actions: [Icon(Icons.menu)],),

body:


GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10.0, 
          mainAxisSpacing: 10.0, 
        ),itemCount: Provider.ProductList.length,
      
         itemBuilder: (context, index) => Material(elevation: 2,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              color: Colors.white,
                    child:
                   
                    Column(
                      children: [
                        Container(height: 70,width: 50,child: Image.network(Provider.ProductList[index].image??""),),
                        Column(
                          children: [
                            Text(Provider.ProductList[index].title??""),
                            
                          ],
                          
                        ),SizedBox(height: 10,),
                        Row(
                          children: [Icon(Icons.currency_rupee,color: Colors.green,),
                            Text(Provider.ProductList[index].price.toString(),style: TextStyle(color:
                            Colors.green,fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    )
               ),
           ),
           ),
         ),);
    

    
  }
}