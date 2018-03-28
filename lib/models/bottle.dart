class Bottle {
  final BottleName bottleName;
  final Capacity capacity;
  final int points;
  final String imagePath;

  const Bottle._internal(this.bottleName, this.capacity, this.points,
      this.imagePath);

  static const COCA_COLA_300 = const Bottle._internal(
      BottleName.COCA_COLA, Capacity.CAN_300, 50, "images/coca_cola_baner.jpg");
  static const COCA_COLA_250 = const Bottle._internal(BottleName.COCA_COLA,
      Capacity.PLASTIC_250, 100, "images/coca_cola_baner.jpg");
  static const COCA_COLA_500 = const Bottle._internal(BottleName.COCA_COLA,
      Capacity.PLASTIC_500, 200, "images/coca_cola_baner.jpg");
  static const COCA_COLA_1L = const Bottle._internal(BottleName.COCA_COLA,
      Capacity.PLASTIC_1L, 450, "images/coca_cola_baner.jpg");
  static const COCA_COLA_2L = const Bottle._internal(BottleName.COCA_COLA,
      Capacity.PLASTIC_2L, 1000, "images/coca_cola_baner.jpg");
  static const SPRITE_300 = const Bottle._internal(
      BottleName.SPRITE, Capacity.CAN_300, 50, "images/sprite_baner.jpeg");
  static const SPRITE_250 = const Bottle._internal(BottleName.SPRITE,
      Capacity.PLASTIC_250, 100, "images/sprite_baner.jpeg");
  static const SPRITE_500 = const Bottle._internal(BottleName.SPRITE,
      Capacity.PLASTIC_500, 200, "images/sprite_baner.jpeg");
  static const SPRITE_1L = const Bottle._internal(BottleName.SPRITE,
      Capacity.PLASTIC_1L, 450, "images/sprite_baner.jpeg");
  static const SPRITE_2L = const Bottle._internal(BottleName.SPRITE,
      Capacity.PLASTIC_2L, 1000, "images/sprite_baner.jpeg");
  static const FANTA_300 = const Bottle._internal(
      BottleName.FANTA, Capacity.CAN_300, 50, "images/fanta_baner.jpg");
  static const FANTA_250 = const Bottle._internal(BottleName.FANTA,
      Capacity.PLASTIC_250, 100, "images/fanta_baner.jpg");
  static const FANTA_500 = const Bottle._internal(BottleName.FANTA,
      Capacity.PLASTIC_500, 200, "images/fanta_baner.jpg");
  static const FANTA_1L = const Bottle._internal(BottleName.FANTA,
      Capacity.PLASTIC_1L, 450, "images/fanta_baner.jpg");
  static const FANTA_2L = const Bottle._internal(BottleName.FANTA,
      Capacity.PLASTIC_2L, 1000, "images/fanta_baner.jpg");
  static const ZERO_300 = const Bottle._internal(BottleName.COCA_COLA_ZERO,
      Capacity.CAN_300, 50, "images/coke_zero.png");
  static const ZERO_250 = const Bottle._internal(BottleName.COCA_COLA_ZERO,
      Capacity.PLASTIC_250, 100, "images/coke_zero.png");
  static const ZERO_500 = const Bottle._internal(BottleName.COCA_COLA_ZERO,
      Capacity.PLASTIC_500, 200, "images/coke_zero.png");
  static const ZERO_1L = const Bottle._internal(BottleName.COCA_COLA_ZERO,
      Capacity.PLASTIC_1L, 450, "images/coke_zero.png");
  static const ZERO_2L = const Bottle._internal(BottleName.COCA_COLA_ZERO,
      Capacity.PLASTIC_2L, 1000, "images/coke_zero.png");
  static const LIGHT_300 = const Bottle._internal(BottleName.COCA_COLA_LIGHT,
      Capacity.CAN_300, 50, "images/coke_light.png");
  static const LIGHT_250 = const Bottle._internal(BottleName.COCA_COLA_LIGHT,
      Capacity.PLASTIC_250, 100, "images/coke_light.png");
  static const LIGHT_500 = const Bottle._internal(BottleName.COCA_COLA_LIGHT,
      Capacity.PLASTIC_500, 200, "images/coke_light.png");
  static const LIGHT_1L = const Bottle._internal(BottleName.COCA_COLA_LIGHT,
      Capacity.PLASTIC_1L, 450, "images/coke_light.png");
  static const LIGHT_2L = const Bottle._internal(BottleName.COCA_COLA_LIGHT,
      Capacity.PLASTIC_2L, 1000, "images/coke_light.png");

  @override
  bool operator ==(other) {
    return other != null &&
        other is Bottle &&
        other.bottleName == this.bottleName &&
        other.capacity == this.capacity;
  }

  @override
  String toString() {
    return bottleNameToString(bottleName) +
        ' - ' +
        bottleCapacityToLongString(capacity);
  }
}

enum BottleName {
  COCA_COLA,
  SPRITE,
  FANTA,
  COCA_COLA_ZERO,
  COCA_COLA_LIGHT,
}

enum Capacity {
  CAN_300,
  PLASTIC_250,
  PLASTIC_500,
  PLASTIC_1L,
  PLASTIC_2L,
}

String bottleNameToString(BottleName name) {
  switch (name) {
    case BottleName.COCA_COLA:
      return "Coca-Cola";
    case BottleName.SPRITE:
      return "Sprite";
    case BottleName.FANTA:
      return "Fanta";
    case BottleName.COCA_COLA_ZERO:
      return "Coca-Cola Zero";
    case BottleName.COCA_COLA_LIGHT:
      return "Coca-Cola Light";
    default:
      return "Nieznane";
  }
}

String bottleCapacityToShortString(Capacity capacity) {
  switch (capacity) {
    case Capacity.CAN_300:
      return "330ml";
    case Capacity.PLASTIC_1L:
      return "1L";
    case Capacity.PLASTIC_2L:
      return "2L";
    case Capacity.PLASTIC_250:
      return "250ml";
    case Capacity.PLASTIC_500:
      return "0,5L";
    default:
      return "Nieznane";
  }
}

String bottleCapacityToLongString(Capacity capacity) {
  switch (capacity) {
    case Capacity.CAN_300:
      return "puszka 300 ml";
    case Capacity.PLASTIC_1L:
      return "butelka 1 l";
    case Capacity.PLASTIC_2L:
      return "butelka 2 l";
    case Capacity.PLASTIC_250:
      return "butelka 250 ml";
    case Capacity.PLASTIC_500:
      return "butelka 500 ml";
    default:
      return "Nieznane";
  }
}