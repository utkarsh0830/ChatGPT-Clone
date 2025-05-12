import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatGPT",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                promptContainer("Tell Me Something"),
                promptContainer("Tell Me Something"),
                promptContainer("Tell Me Something"),
                promptContainer("Tell Me Something"),
              ],
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6)
              ),
              margin: EdgeInsets.only(

                left: 16,
                right: 16,
                top: 6
              ),
              child: const Row(
                children: [
                  Expanded(child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Ask Anything...",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                    ),
                  )),
                  const SizedBox(width: 12,),
                  InkWell(
                    child: Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text("ChatGPT March 2025",
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),),
                  const SizedBox(width: 10,),
                  Text("Free Research Preview")
                ],
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

Widget promptContainer(String text){
  return Container(
    margin: EdgeInsets.only(right: 8),
    //color: Colors.amber.withOpacity(0.1),
    height: 120,
    padding: const EdgeInsets.all(16),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 200,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 0.5),
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Text(text),
        )
      ],
    ),
  );
}
