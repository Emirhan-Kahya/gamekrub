class SpecialDealModel {
  int? id;
  String? name;
  String? description;
  String? img;
  int? price;

  SpecialDealModel({
    this.id,
    this.img,
    this.name,
    this.description,
    this.price,
  });



}

List specialData = [
  SpecialDealModel(
    id: 1,
    name: "Resident Evil Village",
    description: "The game that defined the survival-horror genre is back.",
    price: 150,
    img: "https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_616x353.jpg",
  ),
  SpecialDealModel(
    id: 2,
    name: "Resident Evil Village 1",
    description: "The game that defined the survival-horror genre is back.",
    price: 200,
    img: "https://cdn.cloudflare.steamstatic.com/steam/apps/389430/capsule_616x353.jpg",
  ),
  SpecialDealModel(
    id: 3,
    name: "Resident Evil Village 2",
    description: "The game that defined the survival-horror genre is back.",
    price: 250,
    img: "https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_616x353.jpg",
  ),
  SpecialDealModel(
    id: 4,
    name: "Resident Evil Village  3",
    description: "The game that defined the survival-horror genre is back.",
    price: 300,
    img: "https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_616x353.jpg",
  ),
];