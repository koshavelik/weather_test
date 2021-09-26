import 'package:built_collection/built_collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weather_test/res/dimensions.dart';

class ErrorMessage extends StatelessWidget {
  final List<String> errors;

  const ErrorMessage({
    required this.errors,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Icon(
            Icons.warning_rounded,
            size: Dimensions.medium_icon,
          ),
          SizedBox(height: 25.0),
          Expanded(
            child: ListView.builder(
              itemCount: errors.length,
              itemBuilder: _buildError,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(BuildContext context, int index) {
    return Center(
      key: UniqueKey(),
      child: Text(errors[index].tr()),
    );
  }
}
