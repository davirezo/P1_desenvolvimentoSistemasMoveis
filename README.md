# P1 Desenvolvimento De Sistemas Moveis

## 📁 Estrutura do Projeto

```
lib/
├── main.dart
├── app/
│   ├── models/
│   │   └── usuario_model.dart
│   ├── data/
│   │   └── usuario_mock_store.dart
│   ├── viewmodels/
│   │   ├── splash_viewmodel.dart
│   │   ├── login_viewmodel.dart
│   │   └── signup_viewmodel.dart
│   └── views/
│       ├── splash_page.dart
│       ├── login_page.dart
│       ├── signup_page.dart
│       └── home_page.dart
```

---

## 🧠 Organização do Projeto

A estrutura do projeto foi baseada no padrão **MVVM (Model-View-ViewModel)**, com o objetivo de manter o código organizado, escalável e de fácil manutenção.

* **Models**: responsáveis por representar os dados da aplicação
* **Data**: camada que simula ou gerencia a fonte de dados (mock ou futura integração com API)
* **ViewModels**: fazem a ponte entre a interface e a lógica da aplicação
* **Views**: responsáveis pela interface visual (telas do app)

Essa separação permite:

* Melhor organização do código
* Facilidade para manutenção e evolução do projeto
* Separação clara entre lógica de negócio e interface
* Possibilidade de reaproveitamento de código

---

## 📱 Tecnologias utilizadas

* Flutter
* Dart

---

## 🚀 Como rodar o projeto

```bash
flutter pub get
flutter run
```

---

## 📌 Descrição

Projeto desenvolvido para a disciplina de Desenvolvimento de Sistemas Móveis.
O objetivo é simular um aplicativo com fluxo de autenticação contendo telas de splash, login, cadastro e home.

---

## 👥 Integrantes

* Davi De Aro Rezo Cardoso 25000277
* Eduardo Henrique Nascimento De Lima 25000642
* João Vitor Lúcio Contin 25000219
* João Vitor Franco Moraes 25001068
