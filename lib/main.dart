import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workshop Kampus',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WorkshopPage(),
    );
  }
}

class WorkshopPage extends StatelessWidget {
  const WorkshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          "Workshop Informatika",
          style: TextStyle(
            color: Color(0xFF005DAC),
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(color: Color(0xFF005DAC)),
      ),

      body: Center(
        child: Container(
          width: 430,
          color: const Color(0xFFF5F7FA),

          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                const Text(
                  "Halo, Faza 👋",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E293B),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Temukan workshop menarik hari ini.",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),

                const SizedBox(height: 28),

                workshopCard(
                  title: "UI/UX Design for Beginners",
                  date: "24 Oktober 2026",
                  location: "Auditorium Darsono",
                  quota: "45/50 Terisi",
                ),

                const SizedBox(height: 20),

                workshopCard(
                  title: "Yuk Workshop Mobile Programing",
                  date: "26 Oktober 2026",
                  location: "Lantai 8 Gedung A",
                  quota: "20/30 Terisi",
                ),

                const SizedBox(height: 20),

                workshopCard(
                  title: "Cara Hack Nasa",
                  date: "30 Oktober 2026",
                  location: "Unpam Serang",
                  quota: "50/50 Penuh",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget workshopCard({
    required String title,
    required String date,
    required String location,
    required String quota,
  }) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.black12,
      elevation: 6,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(Icons.calendar_today, size: 18),
                const SizedBox(width: 8),
                Text(date),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.location_on, size: 18),
                const SizedBox(width: 8),
                Text(location),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.group, size: 18),
                const SizedBox(width: 8),
                Text(quota),
              ],
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF005DAC),
                  foregroundColor: Colors.white,

                  padding: const EdgeInsets.symmetric(vertical: 14),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                onPressed: () {},

                child: const Text(
                  "Daftar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
