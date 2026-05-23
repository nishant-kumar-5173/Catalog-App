# 🛍️ Flutter Catalog App

A fully functional **e-commerce catalog mobile app** built with Flutter, featuring product browsing, cart management .

---


## ✨ Features

- 🔐 **Login & Sign Up** — Form validation with animated login button
- 🏠 **Home Page** — Product catalog with live search functionality
- 🔍 **Search** — Real-time product filtering using VelocityX state mutations
- 📦 **Product Detail Page** — Hero animations, quantity stepper, keyboard shortcuts
- 🛒 **Cart Page** — Add/remove items with reactive state updates
- 🌙 **Dark Mode** — Full light/dark theme support
- 📱 **Responsive Layout** — Grid view on tablet, list view on mobile

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| **Flutter** | Cross-platform UI framework |
| **Dart** | Programming language |
| **VelocityX** | State management + UI utilities |
| **pay** | Google Pay & Apple Pay integration |
| **url_launcher** | External link handling |
| **google_fonts** | Custom typography |

---

## 📂 Project Structure

```
lib/
├── core/
│   └── store.dart          # VxStore, all mutations
├── models/
│   ├── catalog.dart        # Item model, SearchMutation, ChangeQuantity
│   └── cart.dart           # CartModel with add/remove
├── pages/
│   ├── login_page.dart
│   ├── signup_page.dart
│   ├── home_page.dart
│   ├── home_detail_page.dart
│   └── cart_page.dart
├── widgets/
│   ├── themes.dart
│   └── home_widgets/
│       ├── catalog_list.dart
│       ├── catalog_header.dart
│       ├── catalog_image.dart
│       └── add_to_cart.dart
└── utils/
    └── routes.dart
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `>=3.3.0`
- Dart SDK `>=3.3.0`
- Android Studio / Xcode

### Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/flutter_catalog.git

# Navigate to project
cd flutter_catalog

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Payment Setup

Add your payment config files to `assets/` folder:

- `assets/gpay.json` — Google Pay configuration
- `assets/applepay.json` — Apple Pay configuration

> Refer to the [pay package documentation](https://pub.dev/packages/pay) for config file format.

---

## 📦 Dependencies

```yaml
velocity_x: ^4.2.1
pay: ^3.3.0
url_launcher: ^6.3.0
google_fonts: ^6.2.1
```

---

## 🗂️ State Management

This app uses **VelocityX (VxState)** for state management with the mutation pattern:

| Mutation | Description |
|----------|-------------|
| `AddMutation` | Adds item to cart |
| `RemoveMutation` | Removes item from cart |
| `SearchMutation` | Filters catalog by search query |
| `ChangeQuantity` | Updates item quantity on detail page |

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

