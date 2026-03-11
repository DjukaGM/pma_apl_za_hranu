# 🍔 PMA Aplikacija za Hranu

Flutter aplikacija za pregled restorana, naručivanje hrane i upravljanje korpom.

---

## 📱 Funkcionalnosti

- Pregled liste restorana
- Pretraga restorana po imenu
- Prikaz menija sa emoji ikonicama hrane
- Dodavanje artikala u korpu
- Omiljeni restorani
- Naručivanje 
- Istorija porudžbina sa opcijom ponavljanja

---

## 🗂️ Struktura projekta

```
lib/
├── data/
│   └── dummy_data.dart         # Lista restorana i hrane
├── models/
│   ├── food_item.dart          # Model za stavku hrane
│   ├── restaurant.dart         # Model za restoran
│   └── order.dart              # Model za porudžbinu
├── providers/
│   ├── cart_provider.dart      # State management za korpu
│   ├── favorites_provider.dart # State management za omiljene
│   └── orders_provider.dart    # State management za porudžbine
├── screens/
│   ├── home_screen.dart        # Početni ekran sa listom restorana
│   ├── restaurant_screen.dart  # Meni restorana
│   ├── cart_screen.dart        # Korpa
│   ├── checkout_screen.dart    # Naručivanje
│   ├── favorites_screen.dart   # Omiljeni restorani
│   └── orders_screen.dart      # Istorija porudžbina
└── main.dart
```

---

## 🚀 Pokretanje projekta

### Preduslovi

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.x+)
- Android Studio ili VS Code
- Android emulator ili fizički uređaj

### Instalacija

```bash
# Kloniranje repozitorijuma
git clone https://github.com/tvoj-username/pma_apl_za_hranu.git

# Ulazak u folder
cd pma_apl_za_hranu

# Instalacija dependencies
flutter pub get

# Pokretanje aplikacije
flutter run
```

---

## 📦 Zavisnosti

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  shared_preferences: ^2.0.0
```

---

## 🏗️ Modeli

### FoodItem

| Polje    | Tip     | Opis                        |
|----------|---------|-----------------------------|
| name     | String  | Naziv artikla               |
| price    | double  | Cena u RSD                  |
| isDrink  | bool    | Da li je piće               |
| emoji    | String  | Emoji ikonica artikla       |

### Restaurant

| Polje   | Tip           | Opis                    |
|---------|---------------|-------------------------|
| name    | String        | Naziv restorana         |
| image   | String        | Putanja do slike        |
| address | String        | Adresa restorana        |
| rating  | double        | Ocena restorana         |
| foods   | List<FoodItem>| Lista stavki menija     |

---

## 🍽️ Restorani

| Restoran                    | Lokacija               | Ocena |
|-----------------------------|------------------------|-------|
| McDonalds                   | Kragujevac             | ⭐ 4.5 |
| KFC                         | Kragujevac             | ⭐ 4.4 |
| Pečenjara Baralić           | Mrcajevci, Čačak       | ⭐ 4.8 |
| Teletina kod Nemca          | Parmenac, Čačak        | ⭐ 4.9 |
| Apetit 032                  | Gornji Milanovac       | ⭐ 4.6 |
| Pečenjara Stari Milanovac   | Gornji Milanovac       | ⭐ 4.7 |

---

## 👨‍💻 Autor

Nikola Djurdjevic 629/2022
David Milic 636/2022
