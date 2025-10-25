import 'package:flutter/material.dart';
import 'package:nigandu/custom_widgets/appbar_title.dart';
import 'package:nigandu/custom_widgets/custom_container.dart';

import '../main.dart';

class SearchHistory extends StatefulWidget {
  const SearchHistory({super.key});

  @override
  State<SearchHistory> createState() => _SearchHistoryState();
}

class _SearchHistoryState extends State<SearchHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Search History",
          subtitle: "Recently searched words"),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: width*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomContainer(count: "156", label: "TOTAL SEARCHES"),
                  CustomContainer(count: "47", label: "THIS WEEK"),
                ],
              ),
              SizedBox(height: width*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today",style: TextStyle(fontSize: width*0.05,color: Colors.black,fontWeight: FontWeight.bold)),
                  Text("Clear History",style: TextStyle(fontSize: width*0.04,color: Colors.orange.shade800,fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                height: width*0.7,
                padding: EdgeInsets.all(width * 0.04),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: width*0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,


                        children: [

                          Text("Computer",style: TextStyle(
                              fontSize: width*0.065,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(
                            children: [
                              Icon(Icons.favorite,color: Colors.pink),
                              SizedBox(width: width*0.03),
                              Icon(Icons.volume_up,color: Colors.grey),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: width*0.03,),
                      Text("/kəmˈpjuː-tɚ/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                      SizedBox(height: height*0.02),
                      Text("കമ്പ്യൂട്ടർ",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                      SizedBox(height:height*0.03),
                      Text("An electronic device for processing \n data",style: TextStyle(
                          fontSize: width*0.04,color: Colors.grey.shade600
                      ),),
                      SizedBox(height:height*0.03),
                      Text("Searched 2 hours ago",style: TextStyle(
                          fontSize: width*0.03,color: Colors.grey.shade600
                      ),),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color: Colors.white70,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 0.9,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )],
                ),
              ),
              SizedBox(height: width*0.03),
              Container(
                height: width*0.7,
                padding: EdgeInsets.all(width * 0.04),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: width*0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,


                        children: [

                          Text("Learning",style: TextStyle(
                              fontSize: width*0.065,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(
                            children: [
                              Icon(Icons.favorite,color: Colors.pink),
                              SizedBox(width: width*0.03),
                              Icon(Icons.volume_up,color: Colors.grey),
                              SizedBox(width: width*0.03),
                              Icon(Icons.delete,color: Colors.grey),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: width*0.03,),
                      Text("/ˈlɜːnɪŋ/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                      SizedBox(height: height*0.02),
                      Text("പഠനം / പഠിക്കല്‍",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                      SizedBox(height:height*0.03),
                      Text("The process of acquiring knowledge \n or skills",style: TextStyle(
                          fontSize: width*0.04,color: Colors.grey.shade600
                      ),),
                      SizedBox(height:height*0.03),
                      Text("Searched 5 hours ago",style: TextStyle(
                          fontSize: width*0.03,color: Colors.grey.shade600
                      ),),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color: Colors.white70,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 0.9,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )],
                ),
              ),
              SizedBox(height: width*0.05),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Yesterday",style: TextStyle(fontSize: width*0.05,color: Colors.black,fontWeight: FontWeight.bold))),

              Container(
                height: width*0.7,
                padding: EdgeInsets.all(width * 0.04),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: width*0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,


                        children: [

                          Text("Happy",style: TextStyle(
                              fontSize: width*0.065,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(
                            children: [
                              Icon(Icons.favorite,color: Colors.pink),
                              SizedBox(width: width*0.03),
                              Icon(Icons.volume_up,color: Colors.grey),
                              SizedBox(width: width*0.03),
                              Icon(Icons.delete,color: Colors.grey),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: width*0.03,),

                      Text("/ˈhæpi/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                      SizedBox(height: height*0.02),
                      Text("സന്തോഷം / ആനന്ദം",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                      SizedBox(height:height*0.03),
                      Text("Feeling or showing pleasure or \n contentment",style: TextStyle(
                          fontSize: width*0.04,color: Colors.grey.shade600
                      ),),
                      SizedBox(height:height*0.03),
                      Text("Searched Yesterday",style: TextStyle(
                          fontSize: width*0.03,color: Colors.grey.shade600
                      ),),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color: Colors.white70,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 0.9,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
