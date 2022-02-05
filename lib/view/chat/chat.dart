import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_owner/model/chat_messages/chat_messages.dart';
import 'package:portal_owner/utils/colors/colors.dart';
import 'package:portal_owner/utils/images/images.dart';
import 'package:portal_owner/utils/screen_utils/screen_utils.dart';
import 'package:unicorndial/unicorndial.dart';

class ChatReciptent {
  final String name;

  ChatReciptent(
      {this.name, this.status, this.lastMessage, this.displayUrl, this.time});

  final String status;
  final String lastMessage;
  final String displayUrl;
  final String time;
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatReciptent> chats = List.filled(
      10,
      ChatReciptent(
          name: 'James Albert',
          status: 'Last Online 5 Hours Ago',
          lastMessage: 'Hey! Whats up ?',
          displayUrl: Images.user,
          time: '22:53'),
      growable: true);
  TextEditingController _messageController = TextEditingController();
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Card(
              elevation: 5.0,
              child: Container(
                height: ScreenUtils.height,
                width: ScreenUtils.getWidth(380),
                child: _chatList(),
              ),
            ),
            right: 0.0,
          ),
          Positioned(
            child: Card(
              elevation: 5.0,
              child: Container(
                height: ScreenUtils.getHeight(930),
                width: ScreenUtils.getWidth(805),
                child: _chatCard(chats[0]),
              ),
            ),
            left: 4.0,
          ),
        ],
      ),
    );
  }

  Widget _chatList() {
    return Stack(
      children: [
        Positioned(
          child: Text(
            'Chat',
            style: GoogleFonts.roboto(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: ColorStyle.selected),
          ),
          left: ScreenUtils.getWidth(74),
          top: ScreenUtils.getHeight(30),
        ),
        Positioned(
          child: Container(
            height: ScreenUtils.height - ScreenUtils.getHeight(98),
            width: ScreenUtils.getWidth(380),
            child: ListView(
              // scrollDirection: Axis.vertical,
              children: List.generate(chats.length, (index) {
                return Container(
                  height: ScreenUtils.getHeight(101),
                  width: ScreenUtils.getWidth(380),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(chats[index].displayUrl),
                              ),
                              shape: BoxShape.circle),
                          height: ScreenUtils.getHeight(72),
                          width: ScreenUtils.getHeight(72),
                        ),
                        left: ScreenUtils.getWidth(21),
                        bottom: ScreenUtils.getHeight(15),
                      ),
                      Positioned(
                        child: Text(
                          chats[index].name,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        left: ScreenUtils.getWidth(104),
                        top: ScreenUtils.getHeight(32),
                      ),
                      Positioned(
                        child: Text(
                          chats[index].lastMessage,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorStyle.selected),
                        ),
                        left: ScreenUtils.getWidth(104),
                        top: ScreenUtils.getHeight(54),
                      ),
                      Positioned(
                        child: Text(
                          chats[index].time,
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.3)),
                        ),
                        right: ScreenUtils.getWidth(12),
                        bottom: ScreenUtils.getHeight(32),
                      ),
                      Positioned(
                        child: SizedBox(
                          child: const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          width: ScreenUtils.getWidth(375),
                        ),
                        right: 0.0,
                        bottom: 0.0,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          top: ScreenUtils.getHeight(98),
        ),
      ],
    );
  }

  Widget _chatCard(ChatReciptent chatUser) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: ScreenUtils.getHeight(136),
            width: ScreenUtils.getWidth(805),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Color(0xFF707C97).withOpacity(0.1), width: 1.0))),
            child: _upperCardSection(chatUser),
          ),
          left: 0.0,
          top: 0.0,
        ),
        Positioned(
          child: Container(
            height: ScreenUtils.getHeight(703),
            width: ScreenUtils.getWidth(805),
            child: _chatSection(),
          ),
          left: 0.0,
          bottom: ScreenUtils.getHeight(90.0),
        ),
        Positioned(
          child: Container(
            height: ScreenUtils.getHeight(89),
            width: ScreenUtils.getWidth(805),
            child: _typingSection(),
          ),
          left: 0.0,
          bottom: 0.0,
        ),
      ],
    );
  }

  Widget _upperCardSection(ChatReciptent chatUser) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(chatUser.displayUrl),
                ),
                shape: BoxShape.circle),
            height: ScreenUtils.getHeight(70),
            width: ScreenUtils.getHeight(70),
          ),
          left: ScreenUtils.getWidth(12),
          top: ScreenUtils.getHeight(36),
        ),
        Positioned(
          child: Text(
            chatUser.name,
            style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: ColorStyle.chatUserName),
          ),
          left: ScreenUtils.getWidth(111),
          top: ScreenUtils.getHeight(35),
        ),
        Positioned(
          child: Text(
            chatUser.status,
            style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorStyle.selected),
          ),
          left: ScreenUtils.getWidth(111),
          top: ScreenUtils.getHeight(62),
        ),
        Positioned(
          child: Text(
            'Type Of Conversation: General Query',
            style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: ColorStyle.chatUserName),
          ),
          left: ScreenUtils.getWidth(111),
          top: ScreenUtils.getHeight(87),
        ),
        Positioned(
          child: Card(
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              height: ScreenUtils.getHeight(52),
              width: ScreenUtils.getHeight(52),
              child: TextButton(
                child: Transform.rotate(
                  angle: -math.pi / 6,
                  child: Icon(
                    Icons.attachment,
                    color: Color(0xFF707C97),
                  ),
                ),
              ),
            ),
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50000)),
          ),
          right: ScreenUtils.getWidth(110),
          top: ScreenUtils.getHeight(56),
        ),
        Positioned(
          child: Card(
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              height: ScreenUtils.getHeight(52),
              width: ScreenUtils.getHeight(52),
              child: TextButton(
                child: Icon(
                  Icons.more_vert,
                  color: Color(0xFF707C97),
                ),
              ),
            ),
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50000)),
          ),
          right: ScreenUtils.getWidth(38),
          top: ScreenUtils.getHeight(56),
        ),
      ],
    );
  }

  Widget _chatSection() {
    return SingleChildScrollView(
      controller: _scrollController,
      child: ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return messages[index].messageType == 'sender'
              ? Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          border: Border.all(
                              color: Color(0xFf707C97).withOpacity(0.25))),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFf707C97)),
                      ),
                    ),
                  ),
                )
              : Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft
                        ,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(chats[index].displayUrl),
                              ),
                              shape: BoxShape.circle),
                          height: ScreenUtils.getHeight(36),
                          width: ScreenUtils.getHeight(36),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: ColorStyle.selected,
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            messages[index].messageContent,
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }

  Widget _typingSection() {
    List<UnicornButton> floatingButtons = [];
    floatingButtons.add(
      UnicornButton(
        hasLabel: false,
        currentButton: FloatingActionButton(
          backgroundColor: ColorStyle.selected,
          mini: true,
          child: Icon(
            Icons.slow_motion_video,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
    floatingButtons.add(
      UnicornButton(
        hasLabel: false,
        currentButton: FloatingActionButton(
          backgroundColor: ColorStyle.selected,
          mini: true,
          child: Icon(
            Icons.image_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
    floatingButtons.add(
      UnicornButton(
        hasLabel: false,
        currentButton: FloatingActionButton(
          backgroundColor: ColorStyle.selected,
          mini: true,
          child: Icon(
            Icons.insert_drive_file_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
    return Stack(
      children: [
        Positioned(
          child: SizedBox(
            child: const Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            width: ScreenUtils.getWidth(722),
          ),
          right: ScreenUtils.getWidth(42),
          top: 0.0,
        ),
        Positioned(
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: ColorStyle.selected),
              height: ScreenUtils.getHeight(45),
              width: ScreenUtils.getHeight(45),
              child: TextButton(
                  onPressed: () {
                    if (_messageController.text.length != 0) {
                      setState(() {
                        messages.add(ChatMessage(
                            messageContent: _messageController.text,
                            messageType: 'sender'));
                        _messageController.clear();
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      });
                    }
                  },
                  child: Transform.rotate(
                    angle: -math.pi / 6,
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: ScreenUtils.getHeight(18),
                    ),
                  )),
            ),
            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50000)),
          ),
          right: ScreenUtils.getWidth(42),
          top: ScreenUtils.getHeight(22),
        ),
        Positioned(
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            height: ScreenUtils.getHeight(24),
            width: ScreenUtils.getHeight(24),
            child: TextButton(
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Color(0xFF707C97).withOpacity(0.5),
              ),
            ),
          ),
          right: ScreenUtils.getWidth(114),
          top: ScreenUtils.getHeight(27),
        ),
        Positioned(
          child: Container(
            child: UnicornDialer(
              hasBackground: false,
              orientation: UnicornOrientation.VERTICAL,
              parentButton: Icon(
                Icons.add,
                color: Colors.white,
              ),
              finalButtonIcon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              parentButtonBackground: ColorStyle.selected,
              childButtons: floatingButtons,
            ),
            height: ScreenUtils.getHeight(45),
            width: ScreenUtils.getHeight(45),
          ),
          left: ScreenUtils.getWidth(17),
          top: ScreenUtils.getHeight(24),
        ),
        Positioned(
            left: ScreenUtils.getWidth(80.0),
            child: Container(
              width: ScreenUtils.getWidth(550),
              child: TextField(
                controller: _messageController,
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.robotoCondensed(
                    fontSize: 20,
                    color: Color(0xFF707C97),
                    fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    hintText: 'Type a message here...',
                    hintStyle: GoogleFonts.robotoCondensed(
                        fontSize: 20,
                        color: Color(0xFF707C97).withOpacity(0.5),
                        fontWeight: FontWeight.w700),
                    border: InputBorder.none),
              ),
            ))
      ],
    );
  }
}
