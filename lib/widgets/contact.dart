import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.grey, width: 1),
      ),
      title: Text(contact.name),
      onTap: () {
        showDetails(context);
      },
    );
  }

  void showDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (cntxt) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Contact Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Name: ${contact.name}'),
                Text('Email: ${contact.email}'),
                Text('Phone Number: ${contact.phoneNumber}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
