import 'package:demoapp/components/DateInputField.dart';
import 'package:demoapp/components/IdTypeButton.dart';
import 'package:flutter/material.dart';

class IdentificationScreen extends StatefulWidget {
  const IdentificationScreen({super.key});

  @override
  State<IdentificationScreen> createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
  String selectedIdType = 'Cédula';

  final TextEditingController idController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController dayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ingresa tu identificación',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Tipo de identificación',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: IdTypeButton(
                        label: 'Cédula',
                        selectedIdType: selectedIdType,
                        onTap: () => setState(() => selectedIdType = 'Cédula'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: IdTypeButton(
                        label: 'Pasaporte',
                        selectedIdType: selectedIdType,
                        onTap: () => setState(() => selectedIdType = 'Pasaporte'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: idController,
                  decoration: const InputDecoration(
                    hintText: 'Ingresa tu número de identificación',
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Ingrese la fecha de expedición',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: DateInputField(hint: 'Año', controller: yearController)),
                    const SizedBox(width: 8),
                    Expanded(child: DateInputField(hint: 'mes', controller: monthController)),
                    const SizedBox(width: 8),
                    Expanded(child: DateInputField(hint: 'día', controller: dayController)),
                    const SizedBox(width: 8),
                    const Icon(Icons.info_outline, color: Colors.grey),
                  ],
                ),
                const SizedBox(height: 40),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF15998E)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Continuar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}