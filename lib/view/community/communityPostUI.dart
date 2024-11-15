import 'package:agri_tech/view/community/commentPage.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search in Community',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Wrap(
              spacing: 6.0,
              children: ['Maize', 'Ginger', 'Citrus', 'Onion', 'Cotton']
                  .map((filter) => FilterChip(
                        label: Text(filter),
                        onSelected: (bool selected) {},
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                PostCard(
                  username: 'Anu',
                  location: 'India',
                  timeAgo: '6 h',
                  imageUrl:
                      'https://i0.wp.com/geopard.tech/wp-content/uploads/2021/12/Crop-Diseases_-Types-Causes-and-Symptoms-2-min.jpg?resize=810%2C439&ssl=1',
                  question: 'What is the problem of Ginger plant',
                  detail: 'Roots',
                  upvotes: 0,
                  downvotes: 0,
                ),
                PostCard(
                  username: 'J Rajasekhar',
                  location: 'India',
                  timeAgo: '1 d',
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1OW8A_TqBrXwdgzqStyGqeEhp5W91dtdidw&s',
                  question: 'Why do we get an uneven growth in Cotton plants?',
                  detail: 'Pls give control measures.',
                  upvotes: 0,
                  downvotes: 0,
                ),
                PostCard(
                  username: 'Mahesh',
                  location: 'India',
                  timeAgo: '6d',
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-gvLdTKNEKSoEqtK8njK8hn3LM3C_0Y4Dsg&s',
                  question: 'What is the problem for the following plant?',
                  detail: 'Crop',
                  upvotes: 0,
                  downvotes: 0,
                ),
                PostCard(
                  username: 'Sujal',
                  location: 'India',
                  timeAgo: '18-oct-2024',
                  imageUrl:
                      'https://images.nationalgeographic.org/image/upload/v1638892233/EducationHub/photos/crops-growing-in-thailand.jpg',
                  question: 'What is the problem for the following plant?',
                  detail: 'Pls give control measures.',
                  upvotes: 0,
                  downvotes: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String location;
  final String timeAgo;
  final String? imageUrl;
  final String question;
  final String detail;
  final int upvotes;
  final int downvotes;

  PostCard({
    required this.username,
    required this.location,
    required this.timeAgo,
    this.imageUrl,
    required this.question,
    required this.detail,
    required this.upvotes,
    required this.downvotes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            Row(
              children: [
                CircleAvatar(
                  child: Text(username[0]),
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$username • $location'),
                    Text(timeAgo, style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            if (imageUrl != null)
              Image.network(
                imageUrl!,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 8.0),
            Text(
              question,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(detail),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up_alt_outlined),
                      onPressed: () {},
                    ),
                    Text(upvotes.toString()),
                    IconButton(
                      icon: Icon(Icons.thumb_down_alt_outlined),
                      onPressed: () {},
                    ),
                    Text(downvotes.toString()),
                  ],
                ),
                IconButton(icon: Icon(Icons.comment), onPressed: () {
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PostScreen()),
                              );
                           

                }),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
