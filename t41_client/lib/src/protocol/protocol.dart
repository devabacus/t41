/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'greeting.dart' as _i2;
import 'configuration.dart' as _i3;
import 'configuration_sync_event.dart' as _i4;
import 'sync_event_type.dart' as _i5;
import 'test_data.dart' as _i6;
import 'user/customer.dart' as _i7;
import 'user/customer_user.dart' as _i8;
import 'user/permission.dart' as _i9;
import 'user/role.dart' as _i10;
import 'user/role_details.dart' as _i11;
import 'user/role_permission.dart' as _i12;
import 'user/super_admin_dashboard.dart' as _i13;
import 'user/super_user_details.dart' as _i14;
import 'user/user_details.dart' as _i15;
import 'user/user_session_data.dart' as _i16;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i17;
import 'package:t41_client/src/protocol/user/user_details.dart' as _i18;
import 'package:t41_client/src/protocol/user/role.dart' as _i19;
import 'package:t41_client/src/protocol/user/permission.dart' as _i20;
import 'package:uuid/uuid_value.dart' as _i21;
import 'package:t41_client/src/protocol/configuration.dart' as _i22;
import 'package:t41_client/src/protocol/user/customer.dart' as _i23;
import 'package:t41_client/src/protocol/user/super_user_details.dart' as _i24;
import 'package:t41_client/src/protocol/test_data.dart' as _i25;
export 'greeting.dart';
export 'configuration.dart';
export 'configuration_sync_event.dart';
export 'sync_event_type.dart';
export 'test_data.dart';
export 'user/customer.dart';
export 'user/customer_user.dart';
export 'user/permission.dart';
export 'user/role.dart';
export 'user/role_details.dart';
export 'user/role_permission.dart';
export 'user/super_admin_dashboard.dart';
export 'user/super_user_details.dart';
export 'user/user_details.dart';
export 'user/user_session_data.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.Configuration) {
      return _i3.Configuration.fromJson(data) as T;
    }
    if (t == _i4.ConfigurationSyncEvent) {
      return _i4.ConfigurationSyncEvent.fromJson(data) as T;
    }
    if (t == _i5.SyncEventType) {
      return _i5.SyncEventType.fromJson(data) as T;
    }
    if (t == _i6.TestData) {
      return _i6.TestData.fromJson(data) as T;
    }
    if (t == _i7.Customer) {
      return _i7.Customer.fromJson(data) as T;
    }
    if (t == _i8.CustomerUser) {
      return _i8.CustomerUser.fromJson(data) as T;
    }
    if (t == _i9.Permission) {
      return _i9.Permission.fromJson(data) as T;
    }
    if (t == _i10.Role) {
      return _i10.Role.fromJson(data) as T;
    }
    if (t == _i11.RoleDetails) {
      return _i11.RoleDetails.fromJson(data) as T;
    }
    if (t == _i12.RolePermission) {
      return _i12.RolePermission.fromJson(data) as T;
    }
    if (t == _i13.SuperAdminDashboard) {
      return _i13.SuperAdminDashboard.fromJson(data) as T;
    }
    if (t == _i14.SuperUserDetails) {
      return _i14.SuperUserDetails.fromJson(data) as T;
    }
    if (t == _i15.UserDetails) {
      return _i15.UserDetails.fromJson(data) as T;
    }
    if (t == _i16.UserSessionData) {
      return _i16.UserSessionData.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Configuration?>()) {
      return (data != null ? _i3.Configuration.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.ConfigurationSyncEvent?>()) {
      return (data != null ? _i4.ConfigurationSyncEvent.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.SyncEventType?>()) {
      return (data != null ? _i5.SyncEventType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.TestData?>()) {
      return (data != null ? _i6.TestData.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Customer?>()) {
      return (data != null ? _i7.Customer.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.CustomerUser?>()) {
      return (data != null ? _i8.CustomerUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Permission?>()) {
      return (data != null ? _i9.Permission.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Role?>()) {
      return (data != null ? _i10.Role.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.RoleDetails?>()) {
      return (data != null ? _i11.RoleDetails.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.RolePermission?>()) {
      return (data != null ? _i12.RolePermission.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.SuperAdminDashboard?>()) {
      return (data != null ? _i13.SuperAdminDashboard.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i14.SuperUserDetails?>()) {
      return (data != null ? _i14.SuperUserDetails.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.UserDetails?>()) {
      return (data != null ? _i15.UserDetails.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.UserSessionData?>()) {
      return (data != null ? _i16.UserSessionData.fromJson(data) : null) as T;
    }
    if (t == List<_i1.UuidValue>) {
      return (data as List).map((e) => deserialize<_i1.UuidValue>(e)).toList()
          as T;
    }
    if (t == List<_i17.UserInfo>) {
      return (data as List).map((e) => deserialize<_i17.UserInfo>(e)).toList()
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<_i18.UserDetails>) {
      return (data as List)
          .map((e) => deserialize<_i18.UserDetails>(e))
          .toList() as T;
    }
    if (t == List<_i19.Role>) {
      return (data as List).map((e) => deserialize<_i19.Role>(e)).toList() as T;
    }
    if (t == List<_i20.Permission>) {
      return (data as List).map((e) => deserialize<_i20.Permission>(e)).toList()
          as T;
    }
    if (t == List<_i21.UuidValue>) {
      return (data as List).map((e) => deserialize<_i21.UuidValue>(e)).toList()
          as T;
    }
    if (t == List<_i22.Configuration>) {
      return (data as List)
          .map((e) => deserialize<_i22.Configuration>(e))
          .toList() as T;
    }
    if (t == List<_i23.Customer>) {
      return (data as List).map((e) => deserialize<_i23.Customer>(e)).toList()
          as T;
    }
    if (t == List<_i24.SuperUserDetails>) {
      return (data as List)
          .map((e) => deserialize<_i24.SuperUserDetails>(e))
          .toList() as T;
    }
    if (t == List<_i25.TestData>) {
      return (data as List).map((e) => deserialize<_i25.TestData>(e)).toList()
          as T;
    }
    try {
      return _i17.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Greeting) {
      return 'Greeting';
    }
    if (data is _i3.Configuration) {
      return 'Configuration';
    }
    if (data is _i4.ConfigurationSyncEvent) {
      return 'ConfigurationSyncEvent';
    }
    if (data is _i5.SyncEventType) {
      return 'SyncEventType';
    }
    if (data is _i6.TestData) {
      return 'TestData';
    }
    if (data is _i7.Customer) {
      return 'Customer';
    }
    if (data is _i8.CustomerUser) {
      return 'CustomerUser';
    }
    if (data is _i9.Permission) {
      return 'Permission';
    }
    if (data is _i10.Role) {
      return 'Role';
    }
    if (data is _i11.RoleDetails) {
      return 'RoleDetails';
    }
    if (data is _i12.RolePermission) {
      return 'RolePermission';
    }
    if (data is _i13.SuperAdminDashboard) {
      return 'SuperAdminDashboard';
    }
    if (data is _i14.SuperUserDetails) {
      return 'SuperUserDetails';
    }
    if (data is _i15.UserDetails) {
      return 'UserDetails';
    }
    if (data is _i16.UserSessionData) {
      return 'UserSessionData';
    }
    className = _i17.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'Configuration') {
      return deserialize<_i3.Configuration>(data['data']);
    }
    if (dataClassName == 'ConfigurationSyncEvent') {
      return deserialize<_i4.ConfigurationSyncEvent>(data['data']);
    }
    if (dataClassName == 'SyncEventType') {
      return deserialize<_i5.SyncEventType>(data['data']);
    }
    if (dataClassName == 'TestData') {
      return deserialize<_i6.TestData>(data['data']);
    }
    if (dataClassName == 'Customer') {
      return deserialize<_i7.Customer>(data['data']);
    }
    if (dataClassName == 'CustomerUser') {
      return deserialize<_i8.CustomerUser>(data['data']);
    }
    if (dataClassName == 'Permission') {
      return deserialize<_i9.Permission>(data['data']);
    }
    if (dataClassName == 'Role') {
      return deserialize<_i10.Role>(data['data']);
    }
    if (dataClassName == 'RoleDetails') {
      return deserialize<_i11.RoleDetails>(data['data']);
    }
    if (dataClassName == 'RolePermission') {
      return deserialize<_i12.RolePermission>(data['data']);
    }
    if (dataClassName == 'SuperAdminDashboard') {
      return deserialize<_i13.SuperAdminDashboard>(data['data']);
    }
    if (dataClassName == 'SuperUserDetails') {
      return deserialize<_i14.SuperUserDetails>(data['data']);
    }
    if (dataClassName == 'UserDetails') {
      return deserialize<_i15.UserDetails>(data['data']);
    }
    if (dataClassName == 'UserSessionData') {
      return deserialize<_i16.UserSessionData>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i17.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
