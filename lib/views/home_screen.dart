import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget SignInProduct(){
    return  Container(
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 5, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://lacorsaria.com/wp-content/uploads/2019/05/la-corsaria-fresh-basil.jpg")),
                      borderRadius: BorderRadius.circular(10)),
                )),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Kabi",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50\$/50 Gram",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),

                    // 50 gram below

                    Row(
                      children: [
                        Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '50 Gram',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.remove),
                                Text('1'),
                                Icon(Icons.add,)
                              ],
                            ),
                          ),

                        ),

                      ],
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );

  }
  // top side
  Widget topProduct(){
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://thumbs.dreamstime.com/b/healthy-lifestyle-concept-black-surface-group-fresh-vegetables-fruits-variety-organic-products-copyspace-background-172394429.jpg')),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //color: Colors.red,
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 160, bottom: 20),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                      child: Center(
                        child: Text(
                          "Vegi",
                          style: TextStyle(fontSize: 30, shadows: [
                            BoxShadow(
                                color: Colors.green,
                                blurRadius: 10,
                                offset: Offset(3, 3))
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "30% OFF",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "On all vegetable Product...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                backgroundColor: Color(0xffd4d181),
                child: Icon(
                  Icons.shop,
                  size: 17,
                  color: Colors.black,
                ),
                radius: 12,
              ),
            )
          ],
          backgroundColor: Colors.yellow,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
           topProduct(),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Herbs Seasonings"),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              // header below

              SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                 SignInProduct(),
                 SizedBox(width: 5,),
                 SignInProduct(),
                    SizedBox(width: 5,),
                 SignInProduct(),
                    SizedBox(width: 5,),
                 SignInProduct(),
                    SizedBox(width: 5,),
                 SignInProduct(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
