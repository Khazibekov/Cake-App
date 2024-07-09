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
    return Padding(
      padding: cakePadding().screenPadding,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [Icon(Icons.save_alt_outlined)],
        ),
        body: Container(
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
                      width: 200,
                    ),
                  ),
                ),
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
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          padding: EdgeInsets.only(bottom: 15,left: 7.5,right: 7.5),
                          color: cakeColor().bottomBarBackgroundColor,
                          child: Center(
                            child: InkWell(
                              child: Icon(Icons.minimize_rounded),
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
