import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'contact_vo.dart';
import 'contact_item.dart';
import 'contact_sider_list.dart';
import 'contact_header.dart';


class Contacts extends StatefulWidget {
  @override
  ContactState createState() => ContactState();
}

class ContactState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        headerBulider: (BuildContext context,int index){
          return Container(
            child: ContactHeader(),
          );
        },
        itemBulider: (BuildContext context, int index){
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: contactData[index]),
          );
        },
        sectionBulider: (BuildContext context, int index){
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: 14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].sectionKey,
              style: TextStyle(fontSize: 14.0,color: Color(0xFF909090)),
            ),
          );
        },
      ),
    );
  }
}
