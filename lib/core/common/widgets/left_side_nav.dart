import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/generated/assets.dart';

class LeftSideNav extends StatelessWidget {
  const LeftSideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ExpandedButton(),
              ListTile(
                leading: const Icon(Icons.align_vertical_bottom),
                title: const Text('All'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandedButton extends StatefulWidget {
  const ExpandedButton({super.key});

  @override
  State<ExpandedButton> createState() => _ExpandedButtonState();
}

class _ExpandedButtonState extends State<ExpandedButton> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white12),
          bottom: BorderSide(color: Colors.white12),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Text('Your Communities',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Icon(_isExpanded
                      ? EvaIcons.chevron_down
                      : EvaIcons.chevron_right),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Icon(EvaIcons.plus),
                    SizedBox(width: 8),
                    Text('Create a Community'),
                  ],
                ),
              ),
            ),
          if (_isExpanded)
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 35,
              itemBuilder: (context, index) {
                return const CommunityTile(
                  subreddit: 'FlutterDev',
                  icon: AssetImage(Assets.imagesDefaultSub),
                );
              },
            ),
        ],
      ),
    );
  }
}

class CommunityTile extends StatefulWidget {
  final String subreddit;
  final ImageProvider icon;

  const CommunityTile({super.key, required this.subreddit, required this.icon});

  @override
  State<CommunityTile> createState() => _CommunityTileState();
}

class _CommunityTileState extends State<CommunityTile> {
  bool _isSubscribed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        child: Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundImage: widget.icon,
            ),
            const SizedBox(width: 8),
            Text('r/${widget.subreddit}'),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    _isSubscribed = !_isSubscribed;
                  });
                },
                icon: Icon(
                    _isSubscribed ? MingCute.star_fill : MingCute.star_line)),
          ],
        ),
      ),
    );
  }
}
