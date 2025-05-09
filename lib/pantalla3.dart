import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: JobSearchScreen()));
}

class JobSearchScreen extends StatelessWidget {
  const JobSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
          color: Colors.teal,
        ),
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: const [
          Icon(Icons.notifications_none, color: Colors.teal),
          SizedBox(width: 16),
          CircleAvatar(
            backgroundImage:
                NetworkImage('https://randomuser.me/api/portraits/women/1.jpg'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.filter_list, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Filter chips
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FilterChipWidget(label: "Development", selected: true),
                  FilterChipWidget(label: "Business"),
                  FilterChipWidget(label: "Data"),
                  FilterChipWidget(label: "Design"),
                  FilterChipWidget(label: "Operations"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Job Cards
            Expanded(
              child: ListView(
                children: const [
                  JobCard(
                    logoUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/6/69/Airbnb_Logo_Bélo.svg',
                    company: 'Airbnb inc,',
                    title: 'VP Business Intelegence',
                    location: '50 Herminia Stravenue,\nCanada',
                  ),
                  JobCard(
                    logoUrl:
                        'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                    company: 'Linkedin corp,',
                    title: 'Talent Acquisition Lead',
                    location: '566 Eleanore Square,\nFrance',
                  ),
                  JobCard(
                    logoUrl:
                        'https://cdn-icons-png.flaticon.com/512/270/270798.png',
                    company: 'Google LLC,',
                    title: 'Principle Product Design',
                    location: '417 Maron, New York\nUnited States',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  const FilterChipWidget({
    super.key,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(label),
        labelStyle: TextStyle(
          color: selected ? Colors.white : Colors.teal,
        ),
        backgroundColor: selected ? Colors.teal : Colors.white,
        side: BorderSide(color: Colors.teal),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String logoUrl;
  final String company;
  final String title;
  final String location;

  const JobCard({
    super.key,
    required this.logoUrl,
    required this.company,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(logoUrl, width: 40, height: 40),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  company,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.location_on_outlined,
                  color: Colors.grey, size: 16),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  location,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              const Icon(Icons.access_time, size: 16, color: Colors.yellow),
              const SizedBox(width: 4),
              const Text('Full Time',
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
