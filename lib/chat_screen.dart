import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'chat_bubbles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
             backgroundImage: AssetImage('assets/images.png'),
          ),
        ),
        title:const Text(
            'by Boldare',
          style: TextStyle(
              color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/phone.svg', height: 25,)),
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/video.svg')),
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/info.svg'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child:
            Center(
              child: Text('fri., 09:46 AM', style: TextStyle(
                  fontSize: 14
              ),
              ),
            ),
          ),
          ChatBubbleRounded(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleRounds(text: 'How was your day?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdged(text: 'Thank you im fine!''How was yesterday?', isCurrentUser: false),
          ChatBubbleRound(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdged(text: 'Thank you im fine!''How was yesterday?', isCurrentUser: false),
          ChatBubbleRound(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdged(text: 'Thank you im fine!''How was yesterday?', isCurrentUser: false),
          ChatBubbleRound(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdged(text: 'Thank you im fine!''How was yesterday?', isCurrentUser: false),
          ChatBubbleRound(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdged(text: 'Thank you im fine!''How was yesterday?', isCurrentUser: false),
          ChatBubbleRound(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdged(text: 'Thank you im fine!''How was yesterday?', isCurrentUser: false)
        ],
      ),
    ),
      bottomSheet: SizedBox(
        height: 100,
        child: SafeArea(
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/add.svg', height: 25)),
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/camera.svg', height: 25)),
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/photo.svg', height: 25)),
              IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/mic.svg', height: 25,)),
              Expanded(
                  child: SizedBox(
                    height: 50,
                    child:  TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFE4E6EB),
                        filled: true,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: SvgPicture.asset('assets/smiley.svg'),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(25)
                        ),
                      ),
                    ),
                  )),
              // SizedBox(
              //   height: 100,
              //   width: 40,
              //   child: IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/thumb.svg', height: 25,)),
              // ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}