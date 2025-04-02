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
            Expanded(child: ListView()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(6)
              ),
              margin: EdgeInsets.only(
                bottom: 40,
                left: 16,
                right: 16,
                top: 6
              ),
              child: Row(
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
          ],
        ),
      ),
    );
  }
}
