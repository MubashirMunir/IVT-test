class FileRecognizingUtil {
  static String getFileExtension(String url) {
    var uri = Uri.parse(url);
    var path = uri.path;
    var extension = path.split('.').last;
    return extension;
  }

  // FilesType handleFilesType(String extention){

  // }
}
