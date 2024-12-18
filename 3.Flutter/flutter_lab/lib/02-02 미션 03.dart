import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('02-02 미션 03'),
        ),
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<TestScreen> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('사용자 입력'),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'User Name'),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'please enter first name';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  firstName = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-Mail',
                  prefixIcon: Icon(Icons.input),
                  border: OutlineInputBorder(),
                  hintText: 'E-Mail Adress',
                  helperText: 'E-mail 주소를 입력해 주세요.',
                  counterText: '$textCounter characters',
                  ),
                  textInputAction: TextInputAction,
                  
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'Please enter last name';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  lastName = value;
                },
              )
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              print('firstName: $firstName, lastName : $lastName');
            }
          },
          child: Text('submit'),
        )
      ],
    );
  }
}
