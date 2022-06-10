import 'package:equatable/equatable.dart';

class TokenEntity extends Equatable {
  final String? accessToken;
  final int? durationValidForInMinutes;
  final String? refreshToken;
  final int? refreshTokenDurationInMinutes;

  const TokenEntity({
    this.accessToken,
    this.durationValidForInMinutes,
    this.refreshToken,
    this.refreshTokenDurationInMinutes,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        accessToken,
        durationValidForInMinutes,
        refreshToken,
        refreshTokenDurationInMinutes,
      ];
}
