import 'dart:async';

import 'package:flutter/material.dart';

class DebounceTextField extends StatefulWidget {
  final Duration debounceDelay;
  final ValueChanged<String> onChanged;
  String? hintText;

  DebounceTextField({
    Key? key,
    required this.onChanged,
    this.debounceDelay = const Duration(milliseconds: 500),
    this.hintText,
  })  : assert(onChanged != null),
        super(key: key);

  @override
  _DebounceTextFieldState createState() => _DebounceTextFieldState();
}

class _DebounceTextFieldState extends State<DebounceTextField> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value) {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(widget.debounceDelay, () {
          widget.onChanged(value);
        });
      },
      showCursor: false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }

  final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(25));
}
