class User {
  String userId;
  String password;
  String username;
  String firstName;
  String email;
  String avatarUrl;
  String currentLocation;

  User(this.userId, this.password, this.username, this.firstName, this.email,
      this.avatarUrl, this.currentLocation);

  User.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        password = json['password'],
        username = json['username'],
        firstName = json['firstName'],
        email = json['email'],
        avatarUrl = json['avatarUrl'],
        currentLocation = json['currentLocation'];

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'password': password,
        'username': username,
        'firstName': firstName,
        'email': email,
        'avatarUrl': avatarUrl,
        'currentLocation': currentLocation
      };
}
