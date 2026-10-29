
import 'package:flutter/material.dart';
import '../data/faculty_data.dart';
import 'faculty_details_screen.dart';

class FacultyListScreen extends StatelessWidget {
  final String department;

  const FacultyListScreen({
    super.key,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    final filteredFaculty = facultyList
        .where((faculty) => faculty.department == department)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$department Faculty'),
      ),
      body: ListView.builder(
        itemCount: filteredFaculty.length,
        itemBuilder: (context, index) {
          final faculty = filteredFaculty[index];

          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(faculty.name),
              subtitle: Text(faculty.designation),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FacultyDetailsScreen(faculty: faculty),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
