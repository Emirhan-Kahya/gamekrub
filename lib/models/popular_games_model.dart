class PopularGamesModel {
  int? id;
  String? name;
  String? description;
  String? img;
  double? price;
  double? discount;

  PopularGamesModel({
    this.id,
    this.img,
    this.name,
    this.description,
    this.price,
    this.discount,
  });



}

List popularGamesList = [
  PopularGamesModel(
    id: 1,
    name: "Resident Evil Village",
    description: "Game",
    price: 150,
    discount: 130,
    img: "https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_616x353.jpg",
  ),
  PopularGamesModel(
    id: 2,
    name: "Resident Evil Village 1",
    description: "Game",
    price: 200,
    discount: 180,
    img: "https://cdn.cloudflare.steamstatic.com/steam/apps/389430/capsule_616x353.jpg",
  ),
  PopularGamesModel(
    id: 3,
    name: "Resident Evil Village 2",
    description: "Game",
    price: 250,
    discount: 245,
    img: "https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_616x353.jpg",
  ),
  PopularGamesModel(
    id: 4,
    name: "Resident Evil Village  3",
    description: "Game",
    price: 300,
    discount: 298,
    img: "https://cdn.akamai.steamstatic.com/steam/apps/1196590/capsule_616x353.jpg",
  ),
];