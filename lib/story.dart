import 'package:flutter/material.dart';

class Story extends StatelessWidget {
   final List<String> products = ['Food Products', 'New Products', 'desert'];
  @override
  Widget build(BuildContext context) {
    return (
 ListView(
            scrollDirection: Axis.horizontal,
            children: products.map(element)=>
             Container(
                child: CircleAvatar(
                  radius: 30.0,
                  //  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  backgroundImage:
                      AssetImage('https://via.placeholder.com/150'),
                  backgroundColor: Colors.black12,
                  // child: Text(
                  //   'Test',
                  //   style: TextStyle(color: Colors.white, fontSize: 12.0),
                  // ),
                ),
              ),
          
 ),
    );
    
  }
}
