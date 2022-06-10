
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as  matcher;
import 'package:preskriber/app/features/patients/domain/patients/patients_failure.dart';
import 'package:preskriber/app/features/patients/domain/value_objects.dart';

void main(){
  group('Email Address', (){
    test('Should return failure when value is Empty', (){
      var title = EmailAddress.create('').fold((err) => err, (title) => title);

      expect(title, const matcher.TypeMatcher<Failure>());
    });


    test('Should return Email Address is invalid ', (){
      var title = EmailAddress.create('adbcuii').getOrElse(() => null);
      expect(title.value, 'adbcuii');
    });

  });

  group('Password', (){
    var passwordStr = '1111111111';
    test('Should return failure if Password ', (){
      var password = Password.create('12345').fold((err) => err, (password) => password);
      expect(password, const matcher.TypeMatcher<Failure>());
    });

    test('Should return if Password is invalid', (){
      // var passwordStr = '1111111';
      var password2 = Password.create(passwordStr).getOrElse(() => null);
      var  password = password2.value.length >6;
      expect(password,  password2.value.length>6);
    });
  });


  group('Phone Number', (){
    var phoneNumber = '07031828170';
    test('Should return Phone Number', (){
      var phone = PhoneNumber.create(phoneNumber).fold((left) => left, (phone) => phone);
      // expect(password, matcher);
    });
  });

  group('Full Name', (){
    test('Should return failure when value is Empty', (){
      var title = FullName.create('').fold((err) => err, (title) => title);

      expect(title, const matcher.TypeMatcher<Failure>());
    });


    test('Should return Email Address is invalid ', (){
      var title = FullName.create('adbcuii').getOrElse(() => null);
      expect(title.value, 'adbcuii');
    });
  });
}

