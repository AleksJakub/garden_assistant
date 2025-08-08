// lib/features/journal/add_edit_journal_entry_screen.dart

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:garden_assistant/app/providers.dart';
import 'package:garden_assistant/data/db/database.dart';

class AddEditJournalEntryScreen extends ConsumerStatefulWidget {
  final String plantId;
  final JournalEntry? existing;
  const AddEditJournalEntryScreen({
    Key? key,
    required this.plantId,
    this.existing,
  }) : super(key: key);

  @override
  ConsumerState<AddEditJournalEntryScreen> createState() =>
      _AddEditJournalEntryScreenState();
}

class _AddEditJournalEntryScreenState
    extends ConsumerState<AddEditJournalEntryScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _contentCtrl;
  File? _photo;
  bool get _isEditing => widget.existing != null;

  @override
  void initState() {
    super.initState();
    _contentCtrl = TextEditingController(text: widget.existing?.content ?? '');
    if (widget.existing?.photoPath != null) {
      _photo = File(widget.existing!.photoPath!);
    }
  }

  @override
  void dispose() {
    _contentCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickPhoto() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.camera);
    if (picked != null) setState(() => _photo = File(picked.path));
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final svc = ref.read(journalServiceProvider);
    final content = _contentCtrl.text.trim();
    final path = _photo?.path;

    if (_isEditing) {
      // pass plain types into updateEntry
      await svc.updateEntry(
        id: widget.existing!.id,
        content: content,
        photoPath: path,
      );
    } else {
      await svc.addEntry(
        plantId: widget.plantId,
        content: content,
        photoPath: path,
      );
    }

    // return to the plant's journal list
    context.go('/journal/${widget.plantId}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isEditing ? 'Edit Entry' : 'New Entry')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _contentCtrl,
                decoration: const InputDecoration(labelText: 'Notes'),
                maxLines: null,
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Please write something'
                    : null,
              ),
              const SizedBox(height: 16),
              _photo != null
                  ? Image.file(_photo!, height: 200, fit: BoxFit.cover)
                  : TextButton.icon(
                      icon: const Icon(Icons.camera_alt),
                      label: const Text('Add Photo'),
                      onPressed: _pickPhoto,
                    ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _save,
                  child: Text(_isEditing ? 'Save Changes' : 'Add Entry'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
