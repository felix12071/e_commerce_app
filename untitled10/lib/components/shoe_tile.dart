// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: 260,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: Text(shoe.name, style: TextStyle(color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Center(
                  child: Image.asset(shoe.imagepath,
                  height: 150,

                  ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(shoe.description,style: TextStyle(
                      fontSize: 15
                    ),),
                    Text(shoe.price,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap ,
                child: Container(
                  padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))),
                    child: Icon(Icons.add,color: Colors.white,)),
              )
            ],
          )
          
          

        ],
      ),
    );
  }
}
