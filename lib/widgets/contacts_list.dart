import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/screens/mobile_chat_screen.dart';

import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  if (width < 600) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MobileChatScreen(index: index),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          info[index]['time'].toString(),
                          style:
                              const TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // const Divider(
              //   color: dividerColor,
              //   indent: 70,
              //   // thickness: 1.0,
              // )
            ],
          );
        },
      ),
    );
  }
}
