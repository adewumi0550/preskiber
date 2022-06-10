import '../domain/token_enitity.dart';

class TokenModel extends TokenEntity {
  const TokenModel(
      {required String accessToken,
      required String refreshToken,
      required int durationValidForInMinutes,
      required int refreshTokenDurationInMinutes});

  Map<String, dynamic> toJson() {
    return {
      'refreshToken': refreshToken,
      'durationValidForInMinutes': durationValidForInMinutes,
      'refreshTokenDurationInMinutes': refreshTokenDurationInMinutes,
      'accessToken': accessToken,
    };
  }

  factory TokenModel.fromJson(Map<String, dynamic> map) {
    return TokenModel(
      refreshToken: map['refreshToken'] as String,
      durationValidForInMinutes: map['durationValidForInMinutes'] as int,
      refreshTokenDurationInMinutes:
          map['refreshTokenDurationInMinutes'] as int,
      accessToken: map['accessToken'] as String,
    );
  }

// String toJson() => json.encode(toMap());
// //
// // factory TokenModel.fromJson(String source) =>
// //     TokenModel.fromMap(json.decode(source));
}
