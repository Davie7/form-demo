import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (value){
        if (value!.isEmpty){
          return 'Name is required';
        }
      },
      onSaved: (value){
        _name = value!;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField();
  }

  Widget _buildPassword() {
    return TextFormField();
  }

  Widget _buildUrl() {
    return TextFormField();
  }

  Widget _buildPhoneNumber() {
    return TextFormField();
  }

  Widget _buildCarolies() {
    return TextFormField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          child: Column(
            children: [
              _buildName(),
              // _buildEmail(),
              // _buildPassword(),
              // _buildUrl(),
              // _buildPhoneNumber(),
              // _buildCarolies(),
              Gap(100),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
