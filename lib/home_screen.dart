import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nigandu/custom_widgets/appbar_title.dart';

import 'custom_widgets/language_toggle_button.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isEnToMl = true;
  List<String> words = ["book", "water", "friend", "house", "car", "apple"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        title: "Dictionary",
        extraWidget:  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("English",style: TextStyle(
                fontSize:width*0.033
            ),),
            SizedBox(width: width*0.01),
            Icon(Icons.sync_alt,
                size: width*0.033),
            SizedBox(width: width*0.01),

            Text("Malayalam",
              style: TextStyle(fontSize: width*0.033),)
          ],
        ),
        ),
      body: Padding(

        padding:  EdgeInsets.all(width*0.05),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: width*0.07),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Word",
                hintStyle: TextStyle(fontSize: width*0.04),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.03),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: width*0.05,
                  horizontal: 12,
                ),
                suffixIcon:
                Padding(
                  padding: EdgeInsets.all(width*0.025),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    height: width*0.055,
                    width: width*0.055,
                  ),
                ),
              ),
            ),
            SizedBox(height: width*0.07),
            LanguageToggleButton(
              onToggle: (isEnToMl) {
                print(isEnToMl ? "EN → ML selected" : "ML → EN selected");
              },
            ),
            SizedBox(height: width*0.07),
            Text("Recent searches",style: TextStyle(color: CupertinoColors.systemGrey,fontWeight: FontWeight.bold,fontSize: width*0.035),),
            SizedBox(height: width*0.03),
            SizedBox(
              height: width * 0.1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: words.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: width*0.015,bottom: width*0.015),
                    child: Container(
                      width: width*0.15,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(width*0.06),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 0.9,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding:  EdgeInsets.symmetric(horizontal: width*0.03, vertical: width*0.015),
                      child: Center(child: Text(words[index],style: TextStyle(fontSize: width*0.033),)),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: width*0.03),
            Container(
              height: width*0.65,
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

                        Text("Hello",style: TextStyle(
                            fontSize: width*0.065,
                            fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: [
                            Icon(Icons.favorite,color: Colors.pink),
                            SizedBox(width: width*0.03),
                            Icon(Icons.volume_up,color: Colors.grey)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Text("/ha'loo/",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: width*0.035)),
                    SizedBox(height: height*0.02),
                    Text("ഹലോ / നമസ്കാരം",style: TextStyle(color: Colors.orange.shade800,fontSize: width*0.07,fontWeight: FontWeight.bold),),
                    SizedBox(height:height*0.03),
                    Text("Used as a greeting or to begin a \n phone conversation",style: TextStyle(
                        fontSize: width*0.04,color: Colors.grey.shade600
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

    );
  }
}
