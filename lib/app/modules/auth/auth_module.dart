import 'package:finance_ranking/app/core/modules/arch_module.dart';
import 'package:finance_ranking/app/modules/auth/login/login_controller.dart';
import 'package:finance_ranking/app/modules/auth/login/login_page.dart';
import 'package:provider/provider.dart';

class AuthModule extends ArchModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(create: (_) => LoginController()),
          ],
          routers: {
            '/login': (context) => const LoginPage(),
          },
        );
}
