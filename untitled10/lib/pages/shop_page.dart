// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/my_text_field.dart';
import '../components/shoe_tile.dart';
import '../models/shoe.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  TextEditingController searchController = TextEditingController();

  // add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);
    //   alert user
    showDialog(context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully added'),
          content: Text('Check your cart'),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>
        NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return[
            ];
          },
            body: SingleChildScrollView(
              child: Column(
                children: [
                MyTextField(
                initialObscureText: false,
                controller: searchController,
                hintText: 'Search',
                sufIcon: Icons.search,
                icon: Icons.search,
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:25.0),
                    child: Text('Everyone flies, Some fly higher than others!',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Hot Picks 🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        Text('See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
              SizedBox(
                height: 300,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index){
                          Shoe shoe = value.getShoeList()[index];
                          return ShoeTile(
                            onTap: () => addShoeToCart(shoe),
                            shoe: shoe,
                          );
                        },
                      ),
                    ),
              Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Hot Shorts 🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        Text('See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index){
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          onTap: () => addShoeToCart(shoe),
                          shoe: shoe,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Trending Accessories 🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        Text('See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index){
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          onTap: () => addShoeToCart(shoe),
                          shoe: shoe,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Trending Accessories 🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        Text('See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index){
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          onTap: () => addShoeToCart(shoe),
                          shoe: shoe,
                        );
                      },
                    ),
                  ),

              ],
            ),
            ),
        )

    );
  }
}