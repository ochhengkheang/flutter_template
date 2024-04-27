class GoRoutes {
  static const home = "/";
  static const edit = "edit";

  /// --- RorkWiki
  static const rorkWiki = "rorkwiki";
  static const rorkWikiUniversities = "university";
  static const rorkWikiCourses = "courses";
  static const rorkWikiScholarships = "scholarships";

  /// --- RorkeLibrary
  static const rorkELibrary = "rorkelibrary";

  // --- with / ----
  /// --- RorkWiki
  static const goRorkWiki = "/$rorkWiki";

  static const goRorkWikiUniversities = "$goRorkWiki/$rorkWikiUniversities";
  static const goRorkWikiUniversitiesEdit =
      "$goRorkWiki/$rorkWikiUniversities/$edit";

  static const goRorkWikiCourses = "$goRorkWiki/$rorkWikiCourses";
  static const goRorkWikiScholarships = "$goRorkWiki/$rorkWikiScholarships";

  // --- RorkeLibrary
  static const goRorkELibrary = "/$rorkELibrary";
}
