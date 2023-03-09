import 'package:flutter/material.dart';
import 'package:rental_app/widgets/catagorywise_product_widgets/products_list.dart';
import '../widgets/colors.dart';

class CatagorywiseViewallScreen extends StatefulWidget {
  const CatagorywiseViewallScreen({super.key});

  @override
  State<CatagorywiseViewallScreen> createState() =>
      _CatagorywiseViewallScreenState();
}

class _CatagorywiseViewallScreenState extends State<CatagorywiseViewallScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController1 = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: MyColors.myBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28.0, 50.0, 28, 0),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Cloth",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Inter"),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(204, 204, 204, 0.3))),
                  child: TabBar(
                      indicator: BoxDecoration(color: MyColors.myButtonColor),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      controller: tabController1,
                      tabs: [
                        Tab(child: Text("Men")),
                        Tab(
                          child: Text(
                            "Wemen",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Kids",
                          ),
                        )
                      ]),
                ),
                Expanded(
                  child: TabBarView(controller: tabController1, children: [
                    ProductList(),
                    ProductList(),
                    ProductList(),
                  ]),
                ),
                // TabBarView(controller: tabController1, children: [
                //   Text("1"),
                //   Text("1"),
                //   Text("1"),
                // ]),

                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
