class ApiRoutes {
  // static const String baseUrl =
  //     "https://inlancing-backend-4d4b84ab0c3e.herokuapp.com/";
  static const String baseUrl =
      "https://inlancing-backend-4d4b84ab0c3e.herokuapp.com/";
  static const String baseApiUrl = "${baseUrl}api/v1/";
  static const String socketUrl = "ws://localhost:4000";
  //static const String socketUrl = baseUrl;

  static const String auth = 'auth';
  static const String user = 'user';
  static const String job = "job";
  static const String talent = "talent";
  static const String proposal = "proposal";
  static const String client = 'client';
  static const String contract = 'contract';
  static const String feedback = 'feedback';
  static const String offer = 'offer';
  static const String milestone = 'milestone';
  static const String payment = 'payment';

  // auth
  static const String login = "$auth/login";
  static const String signUp = "$auth/signup";
  static const String forgotPasswordForEmail = "$auth/forgotPassword";
  static const String forgotChangePassword = "$auth/forgotChangePassword";

// user
  static const String authEmailVerification = "$user/emailVerification";
  static const String authOtpVerification = "$user/verifyEmail";
  static const String attachment = "$user/attachments";
  static const String logout = "$user/logout";
  static const String changePassword = "$user/changePassword";
  static const String userThread = "$user/thread";
  static const String deleteAccount = "$user/deleteAccount";
//client

//talent
  static const String talentService = "$talent/service";
  static const String portfolio = "portfolio";
  static const String talentEmployment = "$talent/employment";
  static const String talentEducation = "$talent/education";
  static const String talentCertificate = "$talent/certificate";
  static const String talentPortfolio = "$talent/portfolio";
  static const String language = "language";
  static const String talentServiceUpdateSkills =
      "$talent/service/updateskills";

  //job
  static const String jobsByType = "$job/bytype";
  static const String jobByTypeOnsite = "$jobsByType/on-site";
  static const String jobByTypeRemote = "$jobsByType/remote";
  static const String jobsExplore = "$job/explore";

  //proposal
  static const String createProposal = "$talent/$proposal";
  static const String updateProposal = "$talent/$proposal";
  static const String getProposals = "$talent/$proposal";
  static const String getClientProposalsForJob = "$client/$proposal/byJobId";
  static const String getTransactionHistory = "transactionhistory/$client";
  static const String getEarningHistory = "transactionhistory/$talent";

  //Chat
  static const String chatRoom = "room";
  static const String chatMessages = "message";

  //Contract
  static const String sendOffer = "$contract/$offer";
  static const String editOffer = "$contract/$offer";
  static const String hireContracts = "$contract/byjobid";
  static const String getTalentOffers = "$contract/$offer";
  static const String milestoneChangeRequest =
      "$contract/$milestone/changes_request";
  static const createMilestone = "$contract/$milestone";
  static const submitMilestone = "$contract/$milestone/submit";
  static const updateMilestone = "$contract/$milestone";
  static const completeMilestone = "$contract/$milestone/completed";
  static const activeMilestone = "$contract/$milestone/active";
  static const acceptOffer = "$contract/accept";
  static const rejectOffer = "$contract/reject";
  static const pauseContract = "$contract/pause";
  static const resumeContract = "$contract/resume";
  static const cancelContract = "$contract/cancel";
  static const completeContract = "$contract/completed";
  static const addTimeSheet = "$contract/addtimesheet";
  static const updateTimeSheet = "$contract/timesheet";
  static const deleteTimeSheet = "$contract/deletetimesheet";

  static const paymentMethodSetupIntent = "$payment/method-setup-intent";
  static const attachPaymentMethod = "$payment/attach-method/";
  static const paymentMethodCards = "$payment/methods";
  static const deletePaymentMethodCards = "$payment/detach-payment-method/";
  static const connectAccountOnboardUrl =
      "$payment/connect-account-onboard-url/";
}
