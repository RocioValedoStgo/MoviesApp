class Movies {
  List<Movie> items = [];
  Movies();
  Movies.fromJsonMap(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final movie = new Movie.fromJsonMap(item);
      items.add(movie);
    }
  }
}

class Movie {
  Dates dates;
  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  Movie({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory Movie.fromJsonMap(Map<String, dynamic> json) {
    return Movie(
        dates: json['dates'],
        page: json['page'],
        results: json['results'],
        totalPages: json['total_pages'],
        totalResults: json['total_results']);
  }
}

class Dates {
  String maximum;
  String minimum;

  Dates({
    this.maximum,
    this.minimum,
  });

  factory Dates.fromJsonMap(Map<String, dynamic> json) {
    return Dates(maximum: json['maximum'], minimum: json['minimum']);
  }
}

class Result {
  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  OriginalLanguage originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Result({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Result.fromJsonMap(Map<String, dynamic> json) {
    return Result(
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        genreIds: json['genre_ids'],
        id: json['id'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        popularity: json['popularity'],
        posterPath: json['poster_path'],
        releaseDate: json['release_date'],
        title: json['title'],
        video: json['video'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count']);
  }
}

enum OriginalLanguage { EN }
