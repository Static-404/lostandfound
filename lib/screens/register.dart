import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  String? _selectedDepartment;
  String? _selectedLevel;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final List<String> _departments = ['Department 1', 'Department 2', 'Department 3'];
  final List<String> _levels = ['100 Level', '200 Level', '300 Level', '400 Level'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _mailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0,),
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
                    child: Text(value??""),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  hintText: 'Department',
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
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
                    child: Text(value??"",),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  hintText: 'Level',
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text;
                  String? department = _selectedDepartment;
                  String? level = _selectedLevel;
                  String password = _passwordController.text;
                  String confirmPassword = _confirmPasswordController.text;
                  String email = _mailController.text;

                },
                child: const Text('Register'),
              ),
              const SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'login');
                    },
                      child: const Text('Login', style: TextStyle(color: Colors.lightBlueAccent),)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
