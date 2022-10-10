class Account {
  String image, name;

  Account({
    required this.image,
    required this.name,
  });
}

List<Account> account = [
  Account(
    name: 'Notifications',
    image: "assets/icons/notifications.png",
  ),
  Account(
    name: 'My Bookings',
    image: "assets/icons/bookings.png",
  ),
  Account(
    name: 'My Plan',
    image: "assets/icons/plan.png",
  ),
  Account(
    name: 'Addresses',
    image: "assets/icons/address.png",
  ),
];

class Share {
  String image, name;

  Share({
    required this.image,
    required this.name,
  });
}

List<Share> share = [
  Share(
    name: 'Facebook',
    image: "assets/icons/facebook.png",
  ),
  Share(
    name: 'Twitter',
    image: "assets/icons/twitter.png",
  ),
  Share(
    name: 'Gmail',
    image: "assets/icons/gmail.png",
  ),
];
