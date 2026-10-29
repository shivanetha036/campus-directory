
import 'package:flutter/material.dart';
import '../models/faculty.dart';

class FacultyDetailsScreen extends StatelessWidget {
  final Faculty faculty;

  const FacultyDetailsScreen({
    super.key,
    required this.faculty,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faculty Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 45,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                faculty.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Designation'),
              subtitle: Text(faculty.designation),
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Department'),
              subtitle: Text(faculty.department),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone Number'),
              subtitle: Text(faculty.phone),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: Text(faculty.email),
            ),
          ],
        ),
      ),
    );
  }
}
