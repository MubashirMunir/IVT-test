const String phonePattern =
    r'^\+?(\d{1,4})?[\s.-]?\(?(\d{1,4})\)?[\s.-]?(\d{1,4})[\s.-]?(\d{1,9})(?:[\s.-]?(\d{1,9}))?$';

const String emailPatter = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]";
const String fileRFCNameRegExPattern = r"filename\\*=.*?''(.+?)(?:;|\$)";
const String fileRegularNameRegExPattern = r'filename="(.+?)"';
const String fileWithoutQuotesNameRegExPattern = r'filename=(.+?)(?:;|$)';
const String expressionToRemoveLeadingZero = r'^0';
const String cardRegularExpression = r'\d';
const String utcTimeRegularExpression = r"^UTC([+-]\d{2}):(\d{2})$";
const String httpHttpsFtpRegularExpression =
    '^(https?|ftp):\\/\\/[^\\s/\$.?#].[^\\s]*\$';
const String httpWwwRegularExpression =
    "^(https?|ftp):\\/\\/(www\\.)?[^\\s/\$.?#].[^\\s]*\$";
const String wwwRegularExpression = "^www\\.[^\\s/\$.?#].[^\\s]*\$";
const String httpsRegularExpression =
    "^(https?|ftp):\\/\\/(www\\.)?[a-zA-Z0-9-]+\\.[a-zA-Z]{2,6}([\\/\\w \\.-]*)*\\/?\$";
const String subDomainAndQueryRegularExpression =
    "^(https?|ftp):\\/\\/([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}([\\/\\w \\.-]*)*(\\?[a-zA-Z0-9&=]*)?\$";
const String urlsWithPorts =
    "^(https?|ftp):\\/\\/([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}(:\\d+)?([\\/\\w \\.-]*)*(\\?[a-zA-Z0-9&=]*)?\$";
const String genericLinksRegularExpressions =
    "\b(?:https?|ftp):\\/\\/(?:www\\.)?[\\w-]+\\.[a-z]{2,6}(?:\\/[\\w\\-\\.~!\$&'()*+,;=:@%]*)*(?:\\?[;&a-z\\[\\]=]*)?(?:#[\\w\\-]*)?\b";
const String bareDomainRegularExpressions =
    "^(www\\.)?[a-zA-Z0-9-]+\\.[a-zA-Z]{2,6}\$";
const String mailtoLinkRegularExpressions =
    "^mailto:[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$";
const String defaultFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
const String yearMonthDateFormat = 'yyyy-MM-dd'; //2024-11-28
const String dayMonthYearDashedDateFormat = 'dd-MM-yyyy'; //2024-11-28
const String monthDayYearDateFormat = 'MMM d, yyyy'; //Nov 28, 2024
const String yearMonthDayHoursMinutesSecondDateFormat =
    'yyyy-MM-dd HH:mm:ss'; //2024-11-28 14:30:00
const String monthDayYearDateFormatWithSlashes = "MM/dd/yyyy"; //11/28/2024
const String dayMonthYearDateFormat = "d MMMM yyyy"; //28 November 2024
const String hourMinuteSectionTimeFormat = 'hh:mm a'; //02:30 PM
const String fullDayDateFormat = "EEEE";
const String shortDayDateFormat = "EEE";
const String imageFileFormats = "Images";
const String otherFileFormats = "PDF.PNG.XLS";

