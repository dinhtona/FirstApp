// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// A proxy of the catalog of items the user can buy.
///
/// In a real app, this might be backed by a backend and cached on device.
/// In this sample app, the catalog is procedurally generated and infinite.
///
/// For simplicity, the catalog is expected to be immutable (no products are
/// expected to be added, removed or changed during the execution of the app).
// class PageModel {
//   static List<String> itemNames = [
//     'Trang Chủ',
//     'Trang mượn',
//     'Trang không yêu anh',
//     'Trang gì kệ nó',
//   ];

//   /// Get item by [id].
//   ///
//   /// In this sample, the catalog is infinite, looping over [itemNames].
//   MyPage getById(int id, String name) => MyPage(id, name);

//   /// Get item by its position in the catalog.
//   MyPage getByPosition(int position) {
//     // In this simplified case, an item's position in the catalog
//     // is also its id.
//     return getById(position);
//   }
// }

@immutable
class MyPage {
  final int id;
  final String _title;
  final String _label;
  final Color color;
  final Icon _icon;
  final int _groupID;

  MyPage(this.id, this._icon, this._title, this._label, this._groupID)
      // To make the sample app look nicer, each item is given one of the
      // Material Design primary colors.
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  int get index => id;

  String get title => _title;

  String get label => _label;

  Icon get icon => _icon;
  int get groupID => _groupID;

  @override
  bool operator ==(Object other) => other is MyPage && other.id == id;
}
