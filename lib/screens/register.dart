import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _nameController = TextEditingController();
  late String _selectedDepartment;
  late String _selectedLevel;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  final List<String> _departments = ['Department 1', 'Department 2', 'Department 3'];
  final List<String> _levels = ['Level 1', 'Level 2', 'Level 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: _selectedDepartment,
              onChanged: (newValue) {
                setState(() {
                  _selectedDepartment = newValue!;
                });
              },
              items: _departments.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Department',
              ),
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: _selectedLevel,
              onChanged: (newValue) {
                setState(() {
                  _selectedLevel = newValue!;
                });
              },
              items: _levels.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Level',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String department = _selectedDepartment;
                String level = _selectedLevel;
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;
                // Perform your registration logic here
                // You can validate the inputs or make API calls to create a new user
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
