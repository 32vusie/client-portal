import 'package:flutter/material.dart';

class CoreMain {
  static var mainLink = "https://clientzone.system32online.co.za/";
}

class ImageAssets {
  static var onboardOne = "assets/images/onboarding/man_and_mobile.png";
  static var onboardTwo = "assets/images/onboarding/features.png";
  static var onboardThree = "assets/images/onboarding/happy_people.png";
}

class Strings {
  static var stepOneTitle = "Welcome";
  static var stepOneContent =
      "Client Portal where everything is made easy for your peace of mind.";
  static var stepTwoTitle = "Get the latest";
  static var stepTwoContent =
      "We have the latest features that will help you manage your accounts and products.";
  static var stepThreeTitle = "Get Started";
  static var stepThreeContent = "Get started with your Client Portal dasboard";
}

class Links {
  static var homeLink = CoreMain.mainLink;
  static var orderLink = CoreMain.mainLink + "/order";
  static var activeOrdersLink = CoreMain.mainLink + "/order/service";
  static var manageOrdersLink = CoreMain.mainLink + "/order/service/manage/";
  static var invoiceLink = CoreMain.mainLink + "/invoice";
  static var knowlageLink = CoreMain.mainLink + "/kb";
  static var supportLink = CoreMain.mainLink + "/support";
  static var emailLink = CoreMain.mainLink + "/email";
  static var blogLink = CoreMain.mainLink + "/news";
  static var forumLink = CoreMain.mainLink + "/forum";
  static var contactUsLink = CoreMain.mainLink + "/support/contact-us";
  static var cartLink = CoreMain.mainLink + "/cart";
  static var profileLink = CoreMain.mainLink + "/client/profile";
  static var fundsLink = CoreMain.mainLink + "/client/balance";
  static var logoutLink = CoreMain.mainLink + "/client/logout";
  static var login =  CoreMain.mainLink + "/login";
}

class EmbedIframes {
  static var loginForm = Uri.dataFromString(
          '<iframe width="" height="100%" src="https://clientzone.system32online.co.za/embed/loginform" frameborder="0"></iframe>',
          mimeType: 'text/html')
      .toString();
}
