import 'package:ndosanga/paginas/Login.dart';
import 'package:ndosanga/paginas/app_bar/my_painter.dart';
import 'package:ndosanga/paginas/app_bar/search_bar.dart';
import 'package:flutter/material.dart';


class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  _DefaultAppBarState createState() => _DefaultAppBarState();
}

class _DefaultAppBarState extends State<DefaultAppBar> with TickerProviderStateMixin {
  double rippleStartX, rippleStartY;
  AnimationController _controller;
  Animation _animation;
  bool isInSearchMode = false;
  TabController _tabController;

  @override
  initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.addStatusListener(animationStatusListener);
    _tabController = new TabController(vsync: this,
                           initialIndex: 1,
                           length: 2); 
  }

  animationStatusListener(AnimationStatus animationStatus) {
    if (animationStatus == AnimationStatus.completed) {
      setState(() {
       isInSearchMode = true; 
      });
    }
  }

  void onSearchTapUp(TapUpDetails details) {
    setState(() {
      rippleStartX = details.globalPosition.dx;
      rippleStartY = details.globalPosition.dy;
    });

    print("pointer location $rippleStartX, $rippleStartY");
    _controller.forward();
  }

  cancelSearch() {
    setState(() {
      isInSearchMode = false;
    });

    onSearchQueryChange('');
    _controller.reverse();
  }

  onSearchQueryChange(String query) {
    print('search $query');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("imagens/app_logho.png"),
          ),
        ),
          actions: <Widget>[
            GestureDetector(
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
              ),
              onTapUp: onSearchTapUp,
            ),
           FlatButton(
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                ),
          ],
        flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
      ),
      /*   elevation: 10.0,    
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,        
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            new FlatButton(
              child: new Tab(
                child: Text('ACHADOS',
            style: TextStyle(
              color:
               Colors.indigo
                ),
                 ),
               ), onPressed: () {},
            ),
            new Tab(child: Text('PERDIDOS',
            style: TextStyle(
              color: Colors.indigo
              ),
             ), 
            ),
          ],
        ), */  
        ),

        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CustomPaint(
              painter: MyPainter(
                containerHeight: widget.preferredSize.height,
                center: Offset(rippleStartX ?? 0, rippleStartY ?? 0),
                radius: _animation.value * screenWidth,
                context: context,
              ),
            );
          },
        ),
        isInSearchMode ? (
          SearchBar(
            onCancelSearch: cancelSearch,
             onSearchQueryChanged: onSearchQueryChange,
          )
        ) : (
          Container()
        )
      ]
    );
  }
}
