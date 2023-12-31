import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_sample/abstract/test_func_class.dart';

class TutorialInputWidget implements TestFuncClass {
  @override
  Widget viewTestFunc() {
    return outlinedButton();
  }

  TextField emailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: TextEditingController(),
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'you@email.com',
        icon: Icon(Icons.mail_outline),
      ),
    );
  }

  TextField numberTextField() {
    return TextField(
      controller: TextEditingController(),
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Number',
        hintText: '12345',
        icon: Icon(Icons.calculate_outlined),
      ),
      maxLength: 8,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
      ],
    );
  }

  Padding passwordTextField() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        controller: TextEditingController(),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(),
          icon: Icon(Icons.password),
        ),
      ),
    );
  }

  TextButton textButton() {
    return TextButton(
      onPressed: () {
        print('push');
      },
      child: const Text('text button'),
    );
  }

  TextButton textIconButton() {
    return TextButton.icon(
      onPressed: () {
        print('push');
      },
      icon: const Icon(
        Icons.add,
        size: 20,
        color: Colors.purple,
      ),
      label: const Text(
        'icon button',
        style: TextStyle(fontSize: 30, color: Colors.purple),
      ),
    );
  }

  Center elevatedButton() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ElevatedButton(
            onPressed: null,
            child: Text('inactivate'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              print('object');
            },
            child: const Text('activate'),
          ),
        ],
      ),
    );
  }

  Padding outlinedButton() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: OutlinedButton(
        onPressed: () {
          print('object');
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: const Text('outlined button'),
      ),
    );
  }
}
