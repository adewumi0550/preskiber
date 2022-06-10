import 'package:flutter/foundation.dart';

const _baseurl = kReleaseMode
    ? 'https://we-quick-pay-staging.herokuapp.com/'
    : 'https://we-quick-pay-production.herokuapp.com/';
// const _BASE_URL = 'https://myclig-stage.azurewebsites.net/api';

//Todo: Post Endpoint
const loginEndpoint = _baseurl + 'auth/login';
const signupEndpoint = _baseurl + 'auth/signup';

//Todo: Put Endpoint
const invalidateRefreshOTP = _baseurl + 'auth/otp/generate';

//Todo:Get Endpoint
const getUserProfile = _baseurl + 'auth/otp/generate';
