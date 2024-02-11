class Movie {
  final String? title;
  final String? director;
  final String? cast;
  final String? poster;

  Movie({this.title, this.director ,this.cast, this.poster});
}

final List<Movie> coming = [
  Movie(
    title: "Pulang Tak Harus Ke Rumah",
    director: "Hanum Prasetyo",
    cast: "Erik Toha",
    poster: "assets/img/pulang.jpg"
  ),
  Movie(
    title: "Spy x Family",
    director: "Pradaya",
    cast: "Endra Lesmana",
    poster: "assets/img/sxf.jpg"
  ),
  Movie(
    title: "Lampir",
    director: "Jowiko",
    cast: "Kaesang Gibrul",
    poster: "assets/img/lampir.jpg"
  ),
];
