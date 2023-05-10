import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

import '../info.dart';
import '../widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final dynamic index;
  const MobileChatScreen({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[index]['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Expanded(
              child: ChatList(),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: mobileChatBoxColor,
                          filled: true,
                          hintText: 'Message',
                          hintStyle: const TextStyle(
                              fontSize: 14, color: Colors.white),
                          contentPadding: const EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.translate_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.attachment_rounded,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    FloatingActionButton(
                      backgroundColor: const Color.fromRGBO(0, 171, 129, 1),
                      onPressed: () {},
                      child: const Icon(Icons.mic, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
