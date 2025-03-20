// ignore_for_file: constant_identifier_names

enum AuthScreens { signUp, signIn }

enum ImageType { svg, pngAndOthers, network, lottie }

enum FilesType { pdf, image, xls }

enum AttachmentType { avatar, certificate, portfolio }

enum ProposalStatus { submitted, withdrawn, accepted, rejected }

enum MessageType { text, image, file }

enum ContractFilters {
  pause,
  completed,
  cancelled,
  offer,
}

enum MessageStatus { read, delivered }

enum NotificationCategory { recent, older }

enum NotificationType {
  failure,
  accounts,
  acceptance,
  submission,
  completion,
  userInteracted,
}

enum Entities {
  offers,
  acknowledged,
  last_id,
  has_more,
  text,
  value,
  delta,
  degree,
  institution,
  end_date,
  start_date,
  description,
  position,
  title,
  skills,
  summary,
  rate,
  total,
  pages,
  page,
  search,
  currentPage,
  limit,
  meta,
  data,
  user,
  message,
  response,
  choices,
  id,
  role,
  token,
  first_name,
  last_name,
  email,
  phone_number,
  country,
  password,
  otp,
  avatar,
  certificate_name,
  issuing_organization,
  issue_date,
  expiration_date,
  url,
  images,
  industry,
  company_name,
  employment_history,
  certificates,
  qualifications,
  languages,
  language,
  old_password,
  content,
  special_request,
  metadata,
  proficiency_level,
  client_secret
}

enum SocketEvents {
  roomUpdated,
  openedRoom,
  userTyping,
  onError,
  closedRoom,
  sentMessage,
  receiveMessage,
  openRoom,
  closeRoom,
  sendMessage,
  typing,
  stopTyping,
  openRoomUpdated,
  disconnect,

}

enum SpecialRequestWithQuery {
  generateSRS,
  estimate,
}

enum AuthProviders { Google, Facebook, Linkedin, Apple, Default }

enum AiChatRoles { assistant, user }

enum UserType { Client, Talent, Both }

enum ImageFor { user, others }

enum AccountStatusTypes {
  SIGNUP,
  PofileCompleted,
  ACTIVE,
  INACTIVE,
  PENDING_VERIFICATION,
  PENDING_EMAIL_VERIFICATION,
  NEW,
  SUSPENDED,
  BANNED,
  DELETED
}

enum ProfileStatusTypes {
  DRAFT,
  PENDING_APPROVAL,
  ACTIVE,
  SUSPENDED,
  REJECTED,
  ARCHIVED,
  DEFAULT
}

enum ContractStatuses {
  all,
  active,
  offer,
  in_progress,
  pause,
  completed,
  cancelled,
}

enum MilestoneStatuses {
  next,
  active,
  pause,
  in_review,
  changes_request,
  completed,
}

enum JobType {
  remote,
  onSite,
}

enum JobTerm {
  longTerm,
  shortTerm,
}
