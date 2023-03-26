import 'package:finance_ranking/app/core/modules/arch_page.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/single_child_widget.dart';

abstract class ArchModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  ArchModule({
    required Map<String, WidgetBuilder> routers,
    List<SingleChildWidget>? bindings,
  })  : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map((key, pageBuilder) => MapEntry(
          key,
          (_) => ArchPage(
            bindings: _bindings,
            page: pageBuilder,
          ),
        ));
  }
}
