
import 'package:flutter/material.dart';
import '../data/faculty_data.dart';
import '../widgets/department_card.dart';
import 'faculty_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Directory'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Select Department',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...departments.map(
                (department) => DepartmentCard(
              department: department,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FacultyListScreen(
                      department: department,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
