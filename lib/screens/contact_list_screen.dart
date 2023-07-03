import 'package:flutter/material.dart';

import '../models/contact.dart';
import '../widgets/contact.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final List<Contact> contcts = [
    Contact(
      name: 'Partho Debnath',
      email: 'pathodebnath28@gmail.com',
      phoneNumber: '01537618827',
    ),
    Contact(
      name: 'Mr. User',
      email: 'user@gmail.com',
      phoneNumber: '0153869927',
    ),
    Contact(
      name: 'Partho',
      email: 'partho@gmail.com',
      phoneNumber: '01537699827',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: contcts.length,
        separatorBuilder: (cntxt, index) => const SizedBox(height: 8.0),
        itemBuilder: (cntxt, index) {
          return ContactItem(contact: contcts[index]);
        },
      ),
    );
  }
}
