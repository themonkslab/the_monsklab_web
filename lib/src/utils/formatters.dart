String formatGitHubImagesUrls(String content, String baseUrl) {
  // From ![acciones externas resultado 1](3.2_external_action_result.png)
  // will get (3.2_external_action_result.png)
  // https://regexr.com/
  //! don't use + in RegExp String
  final RegExp imageUrlExp = RegExp(
    r'!\[(.*)\]\((.*)\)',
    multiLine: true,
  );
  final Iterable<RegExpMatch> matches = imageUrlExp.allMatches(content);
  String output = content;
  for (final match in matches) {
    final String imageFilename =
        match.group(2).toString().replaceAll('(', '').replaceAll(')', '');
    if (!imageFilename.contains('https://')) {
      final String urlBasedImageFilename = baseUrl + imageFilename;
      output = output.replaceAll(imageFilename, urlBasedImageFilename);
    }
  }
  return output;
}
