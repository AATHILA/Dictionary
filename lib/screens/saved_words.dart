import 'package:flutter/material.dart';
import 'package:nigandu/custom_widgets/appbar_title.dart';
import 'package:nigandu/custom_widgets/custom_container.dart';

import '../main.dart';

class SavedWords extends StatefulWidget {
  const SavedWords({super.key});

  @override
  State<SavedWords> createState() => _SavedWordsState();
}

class _SavedWordsState extends State<SavedWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Saved Words",
          subtitle: "Your favourite words"),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: width*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomContainer(count: "24", label: "SAVED WORDS"),
                  CustomContainer(count: "12", label: "COLLECTIONS"),
                ],
              ),
              SizedBox(height: width*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Saved",style: TextStyle(fontSize: width*0.05,color: Colors.black,fontWeight: FontWeight.bold)),
                  Text("Clear All",style: TextStyle(fontSize: width*0.04,color: Colors.orange.shade800,fontWeight: FontWeight.bold)),
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
        
                          Text("Beautiful",style: TextStyle(
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
                      Text("/ˈbjuː-tɪ-fəl/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                      SizedBox(height: height*0.02),
                      Text("സുന്ദരമായ",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                      SizedBox(height:height*0.03),
                      Text("Having beauty; giving pleasure to the \n mind or senses",style: TextStyle(
                          fontSize: width*0.04,color: Colors.grey.shade600
                      ),),
                      SizedBox(height:height*0.03),
                      Text("Saved 2 days ago",style: TextStyle(
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
        
                          Text("Knowledge",style: TextStyle(
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
                      Text("/ˈnɒ-lɪdʒ/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                      SizedBox(height: height*0.02),
                      Text("അറിവ് / ജ്ഞാനം",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                      SizedBox(height:height*0.03),
                      Text("Information and skills acquired \n through experience",style: TextStyle(
                          fontSize: width*0.04,color: Colors.grey.shade600
                      ),),
                      SizedBox(height:height*0.03),
                      Text("Saved 1 week ago",style: TextStyle(
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

                          Text("Family",style: TextStyle(
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
                      Text("/ˈfæm-li/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                      SizedBox(height: height*0.02),
                      Text("കുടുംബം",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                      SizedBox(height:height*0.03),
                      Text("A group of people related by blood or \n marriage",style: TextStyle(
                          fontSize: width*0.04,color: Colors.grey.shade600
                      ),),
                      SizedBox(height:height*0.03),
                      Text("Saved 1 week ago",style: TextStyle(
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
