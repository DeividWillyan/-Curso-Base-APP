import 'package:base_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Complete App Navigation Flux', (WidgetTester tester) async {
    // Carrega o APP
    await tester.pumpWidget(MyApp());

    // Procura o botao com o Texto goToHome
    final btnGoToHomePage = find.text('goToHome');
    expect(btnGoToHomePage, findsOneWidget);

    // Clica no botao para navegar p/ tela de home
    await tester.tap(btnGoToHomePage);
    await tester.pumpAndSettle();

    // Procura o texto Home na AppBar da page do Micro de Home
    final pageHomeTitle = find.text('Home');
    expect(pageHomeTitle, findsOneWidget);

    // Realiza o pop da page e volta para o modulo de login
    await tester.pageBack();
    await tester.pumpAndSettle();

    // Procura o texto Login na AppBar da page do Micro de Login
    final pageLoginTitle = find.text('Login');
    expect(pageLoginTitle, findsOneWidget);
  });
}
