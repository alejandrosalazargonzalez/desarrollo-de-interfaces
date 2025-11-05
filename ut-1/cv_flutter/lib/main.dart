import 'package:flutter/material.dart';

void main() {
  runApp(const MyCVApp());
}

class MyCVApp extends StatelessWidget {
  const MyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Alejandro Salazar González',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 50,
                children: [_leftColumn(), _rightColumn()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ========================= COLUMNA IZQUIERDA =========================
  Widget _leftColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(width: 300, height: 220),
            _cuadrado(),
            Positioned(
              left: 70,
              top: 50,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 10),
                  borderRadius: BorderRadius.circular(90),
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: const AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),

        const SizedBox(height: 8),
        _contactRow(Icons.phone, '+34 674 211 488'),
        _contactRow(
          Icons.email,
          'alejandrosalazargonzalez2004@gmail.com \nhttps://github.com/alejandrosalazargonzalez',
        ),
        _contactRow(Icons.home, 'La Orotava, 38300'),
        const SizedBox(height: 5),

        _sectionTitle("IDIOMAS"),
        const Text('Español: Nativo'),
        const Text('Inglés: Nivel medio'),
        const SizedBox(height: 5),

        _sectionTitle("COMPETENCIAS"),
        _bulletPoint('Adaptabilidad'),
        _bulletPoint('Resolución de problemas'),
        _bulletPoint('Orden'),
        _bulletPoint('Trabajo en equipo'),
        _bulletPoint('Capacidad de análisis'),
        _bulletPoint('Comunicación'),
      ],
    );
  }

  Widget _contactRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueGrey[800], size: 20),
          const SizedBox(width: 10),
          Text(text, style: TextStyle(fontSize: 10)),
        ],
      ),
    );
  }

  Widget _bulletPoint(String text) {
    return SizedBox(
            width: 350,
      child: Padding(
        padding: const EdgeInsets.only(left: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("• ", style: TextStyle(fontSize: 15)),
              Text(text, softWrap: true, maxLines: 2,),
            ],
          ),
        ),
    );
  }

  // ========================= COLUMNA DERECHA =========================
  Widget _rightColumn() {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ALEJANDRO SALAZAR GONZÁLEZ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 10),

          _sectionTitle("EDUCACIÓN"),
          _educationItem('Bachillerato', 'IES Rafael Arozarena', '2020 - 2022'),
          _educationItem(
            'Desarrollo de aplicaciones Multiplataforma',
            'IES Puerto de la Cruz',
            '2024 - actualidad',
          ),
          const SizedBox(height: 20),

          _sectionTitle("CAPACITACIONES"),
          _bulletPoint(
            'Nivel medio de programación en C#, C++, Java, \nHTML5 y MIPS.',
          ),
          _bulletPoint('Nivel medio en Fusion360.'),
          _bulletPoint('Nivel bajo en Blender.'),
          _bulletPoint('Formación en impresión 3D con resina.'),
          _bulletPoint('Certificado en programación orientada a\nobjetos C#.'),
          _bulletPoint('Certificado en desarrollo 2D en Unity.'),
          _bulletPoint('Certificado en desarrollo 3D en Unity.'),
          _bulletPoint(
            'Conocimientos básicos de sistemas electrónicos \ndigitales.',
          ),
          const SizedBox(height: 20),

          _sectionTitle("EXPERIENCIA"),
          _bulletPoint('2 meses como programador full stack en Soffteck.'),
          _bulletPoint('Staff en la TLP de 2025.'),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // ========================= ELEMENTOS REUTILIZABLES =========================
  Widget _sectionTitle(String title) {
    return Container(
      width: 300,
      color: Colors.blueGrey[800],
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _educationItem(String degree, String institution, String year) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(degree, style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(institution),
          Text(
            year,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cuadrado() {
    return Container(
      alignment: AlignmentGeometry.topLeft,
      decoration: BoxDecoration(color: Colors.blueGrey[800]),
      width: 150,
      height: 150,
    );
  }

}
