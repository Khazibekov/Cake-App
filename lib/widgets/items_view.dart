
import 'package:cakeapp/constant/constants.dart';
import 'package:cakeapp/constant/items_info.dart';
import 'package:cakeapp/screens/single_items.dart';
import 'package:flutter/material.dart';

class ItemsViewScreen extends StatefulWidget {
  const ItemsViewScreen({super.key});

  @override
  State<ItemsViewScreen> createState() => _ItemsViewScreenState();
}

class _ItemsViewScreenState extends State<ItemsViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return itemGoNewPage(context, index, cakesImage);
        },
      ),
    );
  }

  Padding itemGoNewPage(
    BuildContext context,
    int index,
    cakesImage,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SingleItem(
                  index: index,
                  image: cakesImage[index],
                ),
              ));
        },
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    child: Image.asset(
                      cakesImage[index].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    cakesName[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Y ${cakesPrice[index]} ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: cakeColor().selectedColor),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: cakeColor().selectedColor,
                          ),
                          padding: EdgeInsets.all(5),
                          child: InkWell(
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: cakeColor().textColorWhite,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
