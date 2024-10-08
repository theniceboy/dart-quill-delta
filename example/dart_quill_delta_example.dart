import 'package:dart_quill_delta/dart_quill_delta.dart';

void main() {
  var doc = Delta()..insert('Hello world', {'h': '1'});
  var change = Delta()
    ..retain(6)
    ..delete(5)
    ..insert('Earth');
  var result = doc.compose(change);
  print('Original document:\n$doc\n');
  print('Change:\n$change\n');
  print('Updated document:\n$result\n');

  /// Prints:
  ///
  ///     Original document:
  ///     ins⟨Hello world⟩ + {h: 1}
  ///
  ///     Change:
  ///     ret⟨6⟩
  ///     ins⟨Earth⟩
  ///     del⟨5⟩
  ///
  ///     Updated document:
  ///     ins⟨Hello ⟩ + {h: 1}
  ///     ins⟨Earth⟩
}
