// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:examify/ui/views/admin_home/admin_home_view.dart' as _i10;
import 'package:examify/ui/views/admin_manage_course/admin_manage_course_view.dart'
    as _i11;
import 'package:examify/ui/views/admin_panel/admin_panel_view.dart' as _i7;
import 'package:examify/ui/views/admin_student_performance/admin_student_performance_view.dart'
    as _i13;
import 'package:examify/ui/views/admin_student_performance_details/admin_student_performance_details_view.dart'
    as _i14;
import 'package:examify/ui/views/forgot_password/forgot_password_view.dart'
    as _i6;
import 'package:examify/ui/views/home/home_view.dart' as _i2;
import 'package:examify/ui/views/lecturer_home/lecturer_home_view.dart' as _i9;
import 'package:examify/ui/views/lecturer_my_students/lecturer_my_students_view.dart'
    as _i15;
import 'package:examify/ui/views/login/login_view.dart' as _i4;
import 'package:examify/ui/views/register/register_view.dart' as _i5;
import 'package:examify/ui/views/startup/startup_view.dart' as _i3;
import 'package:examify/ui/views/students_home/students_home_view.dart' as _i8;
import 'package:examify/ui/views/users/users_view.dart' as _i12;
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i17;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const registerView = '/register-view';

  static const forgotPasswordView = '/forgot-password-view';

  static const adminPanelView = '/admin-panel-view';

  static const studentsHomeView = '/students-home-view';

  static const lecturerHomeView = '/lecturer-home-view';

  static const adminHomeView = '/admin-home-view';

  static const adminManageCourseView = '/admin-manage-course-view';

  static const usersView = '/users-view';

  static const adminStudentPerformanceView = '/admin-student-performance-view';

  static const adminStudentPerformanceDetailsView =
      '/admin-student-performance-details-view';

  static const lecturerMyStudentsView = '/lecturer-my-students-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    registerView,
    forgotPasswordView,
    adminPanelView,
    studentsHomeView,
    lecturerHomeView,
    adminHomeView,
    adminManageCourseView,
    usersView,
    adminStudentPerformanceView,
    adminStudentPerformanceDetailsView,
    lecturerMyStudentsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.registerView,
      page: _i5.RegisterView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i6.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.adminPanelView,
      page: _i7.AdminPanelView,
    ),
    _i1.RouteDef(
      Routes.studentsHomeView,
      page: _i8.StudentsHomeView,
    ),
    _i1.RouteDef(
      Routes.lecturerHomeView,
      page: _i9.LecturerHomeView,
    ),
    _i1.RouteDef(
      Routes.adminHomeView,
      page: _i10.AdminHomeView,
    ),
    _i1.RouteDef(
      Routes.adminManageCourseView,
      page: _i11.AdminManageCourseView,
    ),
    _i1.RouteDef(
      Routes.usersView,
      page: _i12.UsersView,
    ),
    _i1.RouteDef(
      Routes.adminStudentPerformanceView,
      page: _i13.AdminStudentPerformanceView,
    ),
    _i1.RouteDef(
      Routes.adminStudentPerformanceDetailsView,
      page: _i14.AdminStudentPerformanceDetailsView,
    ),
    _i1.RouteDef(
      Routes.lecturerMyStudentsView,
      page: _i15.LecturerMyStudentsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      final args = data.getArgs<LoginViewArguments>(
        orElse: () => const LoginViewArguments(),
      );
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.LoginView(key: args.key),
        settings: data,
      );
    },
    _i5.RegisterView: (data) {
      final args = data.getArgs<RegisterViewArguments>(
        orElse: () => const RegisterViewArguments(),
      );
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.RegisterView(key: args.key),
        settings: data,
      );
    },
    _i6.ForgotPasswordView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ForgotPasswordView(),
        settings: data,
      );
    },
    _i7.AdminPanelView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.AdminPanelView(),
        settings: data,
      );
    },
    _i8.StudentsHomeView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.StudentsHomeView(),
        settings: data,
      );
    },
    _i9.LecturerHomeView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.LecturerHomeView(),
        settings: data,
      );
    },
    _i10.AdminHomeView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.AdminHomeView(),
        settings: data,
      );
    },
    _i11.AdminManageCourseView: (data) {
      final args = data.getArgs<AdminManageCourseViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i11.AdminManageCourseView(key: args.key, year: args.year),
        settings: data,
      );
    },
    _i12.UsersView: (data) {
      final args = data.getArgs<UsersViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.UsersView(key: args.key, user: args.user),
        settings: data,
      );
    },
    _i13.AdminStudentPerformanceView: (data) {
      final args =
          data.getArgs<AdminStudentPerformanceViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.AdminStudentPerformanceView(
            key: args.key, yearName: args.yearName),
        settings: data,
      );
    },
    _i14.AdminStudentPerformanceDetailsView: (data) {
      final args = data.getArgs<AdminStudentPerformanceDetailsViewArguments>(
          nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.AdminStudentPerformanceDetailsView(
            key: args.key,
            semesterStage: args.semesterStage,
            studentUid: args.studentUid),
        settings: data,
      );
    },
    _i15.LecturerMyStudentsView: (data) {
      final args = data.getArgs<LecturerMyStudentsViewArguments>(nullOk: false);
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i15.LecturerMyStudentsView(key: args.key, unitCode: args.unitCode),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class LoginViewArguments {
  const LoginViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant LoginViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class RegisterViewArguments {
  const RegisterViewArguments({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant RegisterViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class AdminManageCourseViewArguments {
  const AdminManageCourseViewArguments({
    this.key,
    required this.year,
  });

  final _i16.Key? key;

  final String year;

  @override
  String toString() {
    return '{"key": "$key", "year": "$year"}';
  }

  @override
  bool operator ==(covariant AdminManageCourseViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.year == year;
  }

  @override
  int get hashCode {
    return key.hashCode ^ year.hashCode;
  }
}

class UsersViewArguments {
  const UsersViewArguments({
    this.key,
    required this.user,
  });

  final _i16.Key? key;

  final String user;

  @override
  String toString() {
    return '{"key": "$key", "user": "$user"}';
  }

  @override
  bool operator ==(covariant UsersViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.user == user;
  }

  @override
  int get hashCode {
    return key.hashCode ^ user.hashCode;
  }
}

class AdminStudentPerformanceViewArguments {
  const AdminStudentPerformanceViewArguments({
    this.key,
    required this.yearName,
  });

  final _i16.Key? key;

  final String yearName;

  @override
  String toString() {
    return '{"key": "$key", "yearName": "$yearName"}';
  }

  @override
  bool operator ==(covariant AdminStudentPerformanceViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.yearName == yearName;
  }

  @override
  int get hashCode {
    return key.hashCode ^ yearName.hashCode;
  }
}

class AdminStudentPerformanceDetailsViewArguments {
  const AdminStudentPerformanceDetailsViewArguments({
    this.key,
    required this.semesterStage,
    required this.studentUid,
  });

  final _i16.Key? key;

  final String semesterStage;

  final String studentUid;

  @override
  String toString() {
    return '{"key": "$key", "semesterStage": "$semesterStage", "studentUid": "$studentUid"}';
  }

  @override
  bool operator ==(
      covariant AdminStudentPerformanceDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.semesterStage == semesterStage &&
        other.studentUid == studentUid;
  }

  @override
  int get hashCode {
    return key.hashCode ^ semesterStage.hashCode ^ studentUid.hashCode;
  }
}

class LecturerMyStudentsViewArguments {
  const LecturerMyStudentsViewArguments({
    this.key,
    required this.unitCode,
  });

  final _i16.Key? key;

  final String unitCode;

  @override
  String toString() {
    return '{"key": "$key", "unitCode": "$unitCode"}';
  }

  @override
  bool operator ==(covariant LecturerMyStudentsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.unitCode == unitCode;
  }

  @override
  int get hashCode {
    return key.hashCode ^ unitCode.hashCode;
  }
}

extension NavigatorStateExtension on _i17.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loginView,
        arguments: LoginViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.registerView,
        arguments: RegisterViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminPanelView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminPanelView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStudentsHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.studentsHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLecturerHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.lecturerHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.adminHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminManageCourseView({
    _i16.Key? key,
    required String year,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.adminManageCourseView,
        arguments: AdminManageCourseViewArguments(key: key, year: year),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUsersView({
    _i16.Key? key,
    required String user,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.usersView,
        arguments: UsersViewArguments(key: key, user: user),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminStudentPerformanceView({
    _i16.Key? key,
    required String yearName,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.adminStudentPerformanceView,
        arguments:
            AdminStudentPerformanceViewArguments(key: key, yearName: yearName),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAdminStudentPerformanceDetailsView({
    _i16.Key? key,
    required String semesterStage,
    required String studentUid,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.adminStudentPerformanceDetailsView,
        arguments: AdminStudentPerformanceDetailsViewArguments(
            key: key, semesterStage: semesterStage, studentUid: studentUid),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLecturerMyStudentsView({
    _i16.Key? key,
    required String unitCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.lecturerMyStudentsView,
        arguments:
            LecturerMyStudentsViewArguments(key: key, unitCode: unitCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loginView,
        arguments: LoginViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterView({
    _i16.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.registerView,
        arguments: RegisterViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminPanelView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminPanelView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStudentsHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.studentsHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLecturerHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.lecturerHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.adminHomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminManageCourseView({
    _i16.Key? key,
    required String year,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.adminManageCourseView,
        arguments: AdminManageCourseViewArguments(key: key, year: year),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUsersView({
    _i16.Key? key,
    required String user,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.usersView,
        arguments: UsersViewArguments(key: key, user: user),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminStudentPerformanceView({
    _i16.Key? key,
    required String yearName,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.adminStudentPerformanceView,
        arguments:
            AdminStudentPerformanceViewArguments(key: key, yearName: yearName),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAdminStudentPerformanceDetailsView({
    _i16.Key? key,
    required String semesterStage,
    required String studentUid,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.adminStudentPerformanceDetailsView,
        arguments: AdminStudentPerformanceDetailsViewArguments(
            key: key, semesterStage: semesterStage, studentUid: studentUid),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLecturerMyStudentsView({
    _i16.Key? key,
    required String unitCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.lecturerMyStudentsView,
        arguments:
            LecturerMyStudentsViewArguments(key: key, unitCode: unitCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
