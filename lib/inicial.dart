import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Search App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Poppins', // You might need to add this font
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome home',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            Text(
              'Annie Bryant',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined,
                    color: Colors.grey),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/women/75.jpg', // Placeholder image
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.teal, Colors.cyan],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fast Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'You can search quickly for\nthe job you want',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.white54),
                      prefixIcon:
                          const Icon(Icons.search, color: Colors.white54),
                      filled: true,
                      fillColor: Colors.teal[300]?.withOpacity(0.5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        'https://i.ibb.co/v1G8C0M/cloud.png', // Placeholder image
                        height: 40,
                      ),
                      Image.network(
                        'https://i.ibb.co/9s2XD2y/planet.png', // Placeholder image
                        height: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[100],
                    foregroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('All'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[100],
                    foregroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.flash_on, size: 16),
                      SizedBox(width: 4),
                      Text('Popular'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[100],
                    foregroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.star, size: 16),
                      SizedBox(width: 4),
                      Text('Featured'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _JobCard(
                  companyLogo:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_B%C3%A9is.svg/2560px-Airbnb_Logo_B%C3%A9is.svg.png', // Placeholder
                  companyName: 'Airbnb inc,',
                  jobTitle: 'VP Business Intelegence',
                  location: '50 Herminia Stravenue,\nCanada',
                ),
                const SizedBox(width: 16),
                _JobCard(
                  companyLogo:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png', // Placeholder
                  companyName: 'Google',
                  jobTitle: 'Principal Product Designer',
                  location: '411 University Ave,\nUnited States',
                ),
              ],
            ),
            const SizedBox(height: 20),
            // You can add more job cards here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline, size: 30), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow[600],
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _JobCard extends StatelessWidget {
  final String companyLogo;
  final String companyName;
  final String jobTitle;
  final String location;

  const _JobCard({
    required this.companyLogo,
    required this.companyName,
    required this.jobTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.network(companyLogo),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    companyName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              jobTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
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
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
