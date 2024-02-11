class Movie {
  final String? title;
  final String? director;
  final String? cast;
  final String? poster;
  final String? duration;
  final String? genre;
  final String? synopsis;

  Movie({this.title, this.director ,this.cast,this.genre,this.duration,this.synopsis, this.poster});
}

final List<Movie> movies = [
  Movie(
    title: "Pulang Tak Harus Ke Rumah",
    director: "Hanum Prasetyo",
    cast: "Erik Toha",
    genre: "Drama, Family",
    duration: "1h45min",
    poster: "assets/img/pulang.jpg"
  ),
  Movie(
    title: "Argyyle",
    director: "Matthew Vaughn",
    cast: "Henry Cavill, Bryce Dallas, Howard, Sam Rockwell, Bryan Cranston, Daniel Singh, Dua Lipa",
    genre: "Action, Thriller",
    duration: "2h19min",
    synopsis: "Elly Conway, an introverted spy novelist who seldom leaves her home, is drawn into the real world of espionage when the plots of her books get a little too close to the activities of a sinister underground syndicate. When Aiden, a spy, shows up to save her (he says) from being kidnapped or killed (or both), Elly and her beloved cat Alfie are plunged into a covert world where nothing, and no one, is what it seems.",
    poster: "assets/img/argil.jpg"
  ),
  Movie(
    title : "Pemukim Setan",
    director: "Simon Peres",
    cast : "Julio Math",
    genre: "Horror",
    duration: "1h45min",
    poster : "assets/img/pemukimsetan.jpg"
  ),
  Movie(
    title : "Pasturi Gaje",
    director: "Komeng",
    cast : "Rigen Nerasi",
    genre: "Drama, Family, Comedy",
    duration: "2h20min",
    poster : "assets/img/pasutri.jpg"
  ),
  Movie(
    title : "Munkar",
    director: "Bang Napi",
    cast : "Prabowo",
    genre: "Horror",
    duration: "1h50min",
    poster : "assets/img/munkar.jpg"
  ),
  Movie(
    title : "Agak Laen",
    director: "Simanjuntak",
    cast : "Fraddy Sambo",
    genre: "Drama, Comedy",
    duration: "2h10min",
    poster : "assets/img/agaklaen.jpg"
  )
];
