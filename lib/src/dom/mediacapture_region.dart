// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'mediacapture_streams.dart';

@JS('CropTarget')
@staticInterop
class CropTarget {
  external factory CropTarget();

  external static JSPromise fromElement(Element element);
}

@JS('BrowserCaptureMediaStreamTrack')
@staticInterop
class BrowserCaptureMediaStreamTrack extends MediaStreamTrack {
  external factory BrowserCaptureMediaStreamTrack();
}

extension BrowserCaptureMediaStreamTrackExtension
    on BrowserCaptureMediaStreamTrack {
  external JSPromise cropTo(CropTarget? cropTarget);
  external BrowserCaptureMediaStreamTrack clone();
}
