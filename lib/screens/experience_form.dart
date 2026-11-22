import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';

class ExperienceFormPage extends StatefulWidget {
  const ExperienceFormPage({super.key});

  @override
  State<ExperienceFormPage> createState() => _ExperienceFormPageState();
}

class _ExperienceFormPageState extends State<ExperienceFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _role = "";
  String _organization = "";
  String _category = "Organisasi & Kepanitiaan";
  String _startYear = "";
  String _url = "";

  final List<String> _categories = [
    'Organisasi & Kepanitiaan',
    'Magang / Kerja',
    'Proyek & Riset',
    'Volunteer',
  ];

  bool _isValidOptionalUrl(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return true;
    final uri = Uri.tryParse(trimmed);
    return uri != null &&
        uri.hasAbsolutePath &&
        (uri.scheme == 'http' || uri.scheme == 'https') &&
        uri.host.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Experience Form',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: Staff Public Relations / PIC HR",
                    labelText: "Posisi / Peran",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _role = value ?? "";
                    });
                  },
                  validator: (String? value) {
                    final text = (value ?? "").trim();
                    if (text.isEmpty) {
                      return "Posisi atau peran tidak boleh kosong!";
                    }
                    if (text.length < 2) {
                      return "Posisi minimal terdiri dari 2 karakter.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 14.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: BEM Fasilkom UI / RISTEK",
                    labelText: "Organisasi / Instansi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _organization = value ?? "";
                    });
                  },
                  validator: (String? value) {
                    final text = (value ?? "").trim();
                    if (text.isEmpty) {
                      return "Nama organisasi atau instansi tidak boleh kosong!";
                    }
                    if (text.length < 2) {
                      return "Nama instansi minimal terdiri dari 2 karakter.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 14.0),
                DropdownButtonFormField<String>(
                  initialValue: _category,
                  decoration: InputDecoration(
                    labelText: "Kategori Pengalaman",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  items: _categories
                      .map(
                        (category) => DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        ),
                      )
                      .toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _category = newValue;
                      });
                    }
                  },
                ),
                const SizedBox(height: 14.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Contoh: 2025 atau 2026",
                    labelText: "Tahun Mulai",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _startYear = value ?? "";
                    });
                  },
                  validator: (String? value) {
                    final text = (value ?? "").trim();
                    if (text.isEmpty) {
                      return "Tahun mulai tidak boleh kosong!";
                    }
                    final year = int.tryParse(text);
                    final currentYear = DateTime.now().year;
                    if (year == null || year < 1990 || year > currentYear) {
                      return "Masukkan tahun valid (1990–$currentYear).";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 14.0),
                TextFormField(
                  keyboardType: TextInputType.url,
                  decoration: InputDecoration(
                    hintText: "https://contoh.com (opsional)",
                    labelText: "Tautan Dokumentasi / Portofolio",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _url = value ?? "";
                    });
                  },
                  validator: (String? value) {
                    if (!_isValidOptionalUrl(value ?? "")) {
                      return "Format tautan harus diawali http:// atau https://";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final cleanRole = _role.trim();
                      final cleanOrg = _organization.trim();
                      final cleanYear = _startYear.trim();
                      final cleanUrl =
                          _url.trim().isEmpty ? "-" : _url.trim();

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Pengalaman berhasil ditambahkan!'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Posisi / Peran: $cleanRole'),
                                  const SizedBox(height: 6),
                                  Text('Organisasi / Instansi: $cleanOrg'),
                                  const SizedBox(height: 6),
                                  Text('Kategori: $_category'),
                                  const SizedBox(height: 6),
                                  Text('Tahun Mulai: $cleanYear'),
                                  const SizedBox(height: 6),
                                  Text('Tautan: $cleanUrl'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                  setState(() {
                                    _role = "";
                                    _organization = "";
                                    _category = "Organisasi & Kepanitiaan";
                                    _startYear = "";
                                    _url = "";
                                  });
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}