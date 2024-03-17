import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormbuilderTextField extends StatelessWidget {
  final String name;

  const FormbuilderTextField({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black26),
        ),
        child: FormBuilderTextField(

          name: name,
          decoration: InputDecoration(contentPadding: EdgeInsets.all(15)),
          style: TextStyle(color: Colors.black87),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
      ),
    );
  }
}
