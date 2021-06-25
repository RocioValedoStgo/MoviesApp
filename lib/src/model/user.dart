class User {
  String expiresAt;
  String requestToken;

  User({
    this.expiresAt,
    this.requestToken,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        expiresAt: json['expires_at'] as String,
        requestToken: json['request_token'] as String);
  }
}
