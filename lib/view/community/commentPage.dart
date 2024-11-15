import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Handle back button
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Image section
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://i0.wp.com/geopard.tech/wp-content/uploads/2021/12/Crop-Diseases_-Types-Causes-and-Symptoms-2-min.jpg?resize=810%2C439&ssl=1', // Replace with your image URL
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          // Post details
          Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(width: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Anu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () {}, // Add functionality if needed
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {}, // Add functionality if needed
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          // Post title and description
          Text(
            'What is the problem of Ginger plant',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('Roots'),
          SizedBox(height: 10),
          // Post buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up_alt_outlined),
                    onPressed: () {}, // Add functionality
                  ),
                  Text('Upvote'),
                  IconButton(
                    icon: Icon(Icons.thumb_down_alt_outlined),
                    onPressed: () {}, // Add functionality
                  ),
                  Text('Downvote'),
                ],
              ),
            ],
          ),
          Divider(),
          // Comment section
          CommentWidget(
            username: 'Sreekanth M',
            userComment:
                'Seems like Rhizome Rot. Please check this green link with # tag for more details and preventive measures.',
          ),
          Divider(),
          // Input section for writing answers
          Padding(
            padding: EdgeInsets.symmetric(vertical: 165),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write your answer',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {}, // Add functionality for send
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String username;
  final String userComment;

  CommentWidget({
    required this.username,
    required this.userComment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: Icon(Icons.person),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(userComment),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up_alt_outlined),
                    onPressed: () {}, // Add functionality
                  ),
                  Text('Upvote'),
                  IconButton(
                    icon: Icon(Icons.thumb_down_alt_outlined),
                    onPressed: () {}, // Add functionality
                  ),
                  Text('Downvote'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
