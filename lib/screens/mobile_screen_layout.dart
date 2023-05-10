import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          title: Text(
            "WhatsApp",
            style: GoogleFonts.lato(
              color: Color.fromARGB(242, 158, 158, 158),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Transform.rotate(
                angle: 35 * 3.14 / 180, // convert 45 degrees to radians
                child: const Icon(
                  Icons.airplanemode_inactive,
                ),
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wb_sunny_rounded,
                // CupertinoIcons.sun,
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
              color: Colors.grey,
            )
          ],
          bottom: const TabBar(
            labelColor: tabColor,
            indicatorWeight: 4,
            indicatorColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(icon: Icon(Icons.groups)),
              Tab(text: 'Chats'),
              Tab(text: 'Groups'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
