import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesHelper {
  static CircleAvatar circleLoadingAvatar(
      double circleSize, double loadingCircleSize, String url) {
    return CircleAvatar(
      radius: circleSize,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: CircleAvatar(
          radius: circleSize,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(circleSize),
            child: Container(
              width: circleSize,
              height: circleSize,
              child: Stack(
                children: <Widget>[
                  Center(
                      child: Container(
                    width: loadingCircleSize,
                    height: loadingCircleSize,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  )),
                  Center(
                    child: FadeInImage.memoryNetwork(
                      alignment: Alignment.center,
                      placeholder: kTransparentImage,
                      image: url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
