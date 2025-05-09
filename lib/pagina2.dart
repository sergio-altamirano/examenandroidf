import 'package:flutter/material.dart';

void main() {
  runApp(const Pagina2());
}

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Detail',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Poppins', // Consider adding this font to your project
      ),
      home: const JobDetailScreen(),
    );
  }
}

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var grey = Colors.grey;
    return Scaffold(
      backgroundColor:
          Colors.black54.withOpacity(0.5), // Semi-transparent background
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(Icons.add, color: Colors.grey),
                    ),
                    const Spacer(),
                    const SizedBox(width: 16.0),
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.g_mobiledata,
                          color: Colors.blue), // Placeholder for Google logo
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      'Google LLC,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.bookmark_border_outlined,
                        color: Colors.grey),
                    const SizedBox(width: 8.0),
                    const Icon(Icons.more_horiz, color: Colors.grey),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Product Design',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, color: Colors.amber),
                    const SizedBox(width: 8.0),
                    const Text(
                      '417 Marion Plaza, Texas\nUnited States',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    const Icon(Icons.timer_outlined, color: Colors.amber),
                    const SizedBox(width: 8.0),
                    const Text(
                      'Full Time',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Requirement',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _RequirementItem(
                        text: 'Creative with an eye for shape and colour'),
                    SizedBox(height: 8.0),
                    _RequirementItem(
                        text:
                            'Understand different materials and production methods'),
                    SizedBox(height: 8.0),
                    _RequirementItem(
                        text:
                            'Have technical, practical and scientific knowledge and ability'),
                    SizedBox(height: 8.0),
                    _RequirementItem(
                        text:
                            'Interested in the way people choose and use products.'),
                  ],
                ),
                const SizedBox(height: 32.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement apply now functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: const Text(
                      'Apply Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
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

class _RequirementItem extends StatelessWidget {
  final String text;

  const _RequirementItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('• ', style: TextStyle(fontSize: 16.0, color: Colors.grey)),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Colors.grey, fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
