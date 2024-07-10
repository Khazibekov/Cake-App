import 'package:cakeapp/constant/constants.dart';
import 'package:cakeapp/constant/items_info.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatefulWidget {
  final String image;
  final int index;

  SingleItem({
    super.key,
    required this.image,
    required this.index,
  });

  @override
  State<SingleItem> createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cakeColor().textColorWhite,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            padding: EdgeInsets.only(left: 20),
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.save_alt_outlined),
            ),
          ],
        ),
        body: Padding(
          padding: cakePadding().singleItemPadding,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.all(60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: cakeColor().searchBackColor,
                    ),
                    child: Container(
                      child: Image.asset(
                        widget.image,
                        width: 250,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  cakesName[widget.index],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: cakeColor().searchBackColor,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: cakeColor().iconColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: InkWell(
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: cakeColor().selectedColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: InkWell(
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description[widget.index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Price ${cakesPrice[widget.index]}\$",
                  
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: cakeColor().selectedColor
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Row(
                    children: [
                      Container(
                        width: 170,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: cakeColor().iconColor,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 170,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: cakeColor().selectedColor,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
