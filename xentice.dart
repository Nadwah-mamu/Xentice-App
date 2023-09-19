import 'package:flutter/material.dart';

class Xentice extends StatefulWidget {
  const Xentice({Key? key}) : super(key: key);

  @override
  State<Xentice> createState() => _XenticeState();
}

class _XenticeState extends State<Xentice> {
  List<Map> IndusLand = [
    {"name": "Industrial Land", "icon": Icons.webhook},
    {"name": "Industrial Land", "icon": Icons.webhook},
    {"name": "Industrial Land", "icon": Icons.webhook},
    {"name": "Industrial Land", "icon": Icons.webhook}
  ];
  TextEditingController a = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.line_weight_outlined,color: Colors.blue,),
        elevation: 0,
        actions: [
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(right: 10, top: 5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn1.vectorstock.com/i/1000x1000/36/15/businessman-character-avatar-isolated-vector-12613615.jpg")),
                // color: Colors.red,
                shape: BoxShape.circle),
          )
        ],
        backgroundColor: Colors.white,
        title: Text(
          "  xentice",
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w400,
              fontSize: 35),
          // leading: Drawer(
          // shape:
          // backgroundColor: Colors.blue.shade900,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 5, top: 10, right: 5),
            child: TextField(
              controller: a,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 5, left: 10),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: Colors.black12,
                    size: 30,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color: Colors.black12, fontWeight: FontWeight.w900)),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 12),
                child: Text(
                  "Property",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 12),
                child: Text(
                  "Services",
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) {
                return Container(
                  margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      Icon(
                        Icons.webhook,
                        color: Colors.black87,
                        size: 30,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Industrial Land",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              }
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context,index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Text(
                            "Commercial Office",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          )
                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.end,
                          children: [
                        Text("see all",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black12
                        ),)
                      ],),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index) {
                          return Card(
                            child: Container(

                              width: 200,
                              // color: Colors.black,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    margin: EdgeInsets.only(left: 10,right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white70,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage("https://thumbs.dreamstime.com/b/modern-office-interior-13654524.jpg")
                                      )
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Woxro office",style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 10,),
                                      Text("Rs 2500/hr",style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.green,),
                                      Text("Thrissur",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  )

                                ],
                              ),
                              // margin: EdgeInsets.only(left: 10,
                              // top: ),
                            ),
                          );
                        }
                      ),
                    ),
                  ],
                );
              }
            ),
          )
        ]
      ),
    );
  }
}
