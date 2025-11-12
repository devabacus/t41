/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/admin_endpoint.dart' as _i2;
import '../endpoints/configuration_endpoint.dart' as _i3;
import '../endpoints/super_admin_endpoint.dart' as _i4;
import '../endpoints/test_data_endpoint.dart' as _i5;
import '../endpoints/user_manager_endpoint.dart' as _i6;
import '../greeting_endpoint.dart' as _i7;
import 'package:uuid/uuid_value.dart' as _i8;
import 'package:t41_server/src/generated/user/role.dart' as _i9;
import 'package:t41_server/src/generated/configuration.dart' as _i10;
import 'package:t41_server/src/generated/user/customer.dart' as _i11;
import 'package:t41_server/src/generated/test_data.dart' as _i12;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i13;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'admin': _i2.AdminEndpoint()
        ..initialize(
          server,
          'admin',
          null,
        ),
      'configuration': _i3.ConfigurationEndpoint()
        ..initialize(
          server,
          'configuration',
          null,
        ),
      'superAdmin': _i4.SuperAdminEndpoint()
        ..initialize(
          server,
          'superAdmin',
          null,
        ),
      'testData': _i5.TestDataEndpoint()
        ..initialize(
          server,
          'testData',
          null,
        ),
      'userManagement': _i6.UserManagementEndpoint()
        ..initialize(
          server,
          'userManagement',
          null,
        ),
      'greeting': _i7.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['admin'] = _i1.EndpointConnector(
      name: 'admin',
      endpoint: endpoints['admin']!,
      methodConnectors: {
        'listUsers': _i1.MethodConnector(
          name: 'listUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).listUsers(session),
        ),
        'updateUserRole': _i1.MethodConnector(
          name: 'updateUserRole',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).updateUserRole(
            session,
            userId: params['userId'],
            roleId: params['roleId'],
          ),
        ),
        'listRoles': _i1.MethodConnector(
          name: 'listRoles',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).listRoles(session),
        ),
        'listPermissions': _i1.MethodConnector(
          name: 'listPermissions',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint)
                  .listPermissions(session),
        ),
        'createOrUpdateRole': _i1.MethodConnector(
          name: 'createOrUpdateRole',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i9.Role>(),
              nullable: false,
            ),
            'permissionIds': _i1.ParameterDescription(
              name: 'permissionIds',
              type: _i1.getType<List<_i8.UuidValue>>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).createOrUpdateRole(
            session,
            params['role'],
            params['permissionIds'],
          ),
        ),
        'deleteRole': _i1.MethodConnector(
          name: 'deleteRole',
          params: {
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).deleteRole(
            session,
            params['roleId'],
          ),
        ),
        'getMyCustomer': _i1.MethodConnector(
          name: 'getMyCustomer',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).getMyCustomer(session),
        ),
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'userName': _i1.ParameterDescription(
              name: 'userName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).createUser(
            session,
            userName: params['userName'],
            email: params['email'],
            password: params['password'],
            roleId: params['roleId'],
          ),
        ),
        'getUserDetails': _i1.MethodConnector(
          name: 'getUserDetails',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).getUserDetails(
            session,
            params['userId'],
          ),
        ),
        'blockUser': _i1.MethodConnector(
          name: 'blockUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'blocked': _i1.ParameterDescription(
              name: 'blocked',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).blockUser(
            session,
            params['userId'],
            params['blocked'],
          ),
        ),
        'getRoleDetails': _i1.MethodConnector(
          name: 'getRoleDetails',
          params: {
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).getRoleDetails(
            session,
            params['roleId'],
          ),
        ),
        'updateUser': _i1.MethodConnector(
          name: 'updateUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userName': _i1.ParameterDescription(
              name: 'userName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['admin'] as _i2.AdminEndpoint).updateUser(
            session,
            userId: params['userId'],
            userName: params['userName'],
            email: params['email'],
            roleId: params['roleId'],
          ),
        ),
      },
    );
    connectors['configuration'] = _i1.EndpointConnector(
      name: 'configuration',
      endpoint: endpoints['configuration']!,
      methodConnectors: {
        'createConfiguration': _i1.MethodConnector(
          name: 'createConfiguration',
          params: {
            'configuration': _i1.ParameterDescription(
              name: 'configuration',
              type: _i1.getType<_i10.Configuration>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['configuration'] as _i3.ConfigurationEndpoint)
                  .createConfiguration(
            session,
            params['configuration'],
          ),
        ),
        'getConfigurations': _i1.MethodConnector(
          name: 'getConfigurations',
          params: {
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['configuration'] as _i3.ConfigurationEndpoint)
                  .getConfigurations(
            session,
            limit: params['limit'],
          ),
        ),
        'getConfigurationById': _i1.MethodConnector(
          name: 'getConfigurationById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['configuration'] as _i3.ConfigurationEndpoint)
                  .getConfigurationById(
            session,
            params['id'],
          ),
        ),
        'getConfigurationsSince': _i1.MethodConnector(
          name: 'getConfigurationsSince',
          params: {
            'since': _i1.ParameterDescription(
              name: 'since',
              type: _i1.getType<DateTime?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['configuration'] as _i3.ConfigurationEndpoint)
                  .getConfigurationsSince(
            session,
            params['since'],
          ),
        ),
        'updateConfiguration': _i1.MethodConnector(
          name: 'updateConfiguration',
          params: {
            'configuration': _i1.ParameterDescription(
              name: 'configuration',
              type: _i1.getType<_i10.Configuration>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['configuration'] as _i3.ConfigurationEndpoint)
                  .updateConfiguration(
            session,
            params['configuration'],
          ),
        ),
        'watchEvents': _i1.MethodStreamConnector(
          name: 'watchEvents',
          params: {},
          streamParams: {},
          returnType: _i1.MethodStreamReturnType.streamType,
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
            Map<String, Stream> streamParams,
          ) =>
              (endpoints['configuration'] as _i3.ConfigurationEndpoint)
                  .watchEvents(session),
        ),
      },
    );
    connectors['superAdmin'] = _i1.EndpointConnector(
      name: 'superAdmin',
      endpoint: endpoints['superAdmin']!,
      methodConnectors: {
        'saListCustomers': _i1.MethodConnector(
          name: 'saListCustomers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saListCustomers(session),
        ),
        'saSaveCustomer': _i1.MethodConnector(
          name: 'saSaveCustomer',
          params: {
            'customer': _i1.ParameterDescription(
              name: 'customer',
              type: _i1.getType<_i11.Customer>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saSaveCustomer(
            session,
            params['customer'],
          ),
        ),
        'saCreateUser': _i1.MethodConnector(
          name: 'saCreateUser',
          params: {
            'userName': _i1.ParameterDescription(
              name: 'userName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'customerId': _i1.ParameterDescription(
              name: 'customerId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint).saCreateUser(
            session,
            userName: params['userName'],
            email: params['email'],
            password: params['password'],
            customerId: params['customerId'],
            roleId: params['roleId'],
          ),
        ),
        'saListAllUsers': _i1.MethodConnector(
          name: 'saListAllUsers',
          params: {
            'customerId': _i1.ParameterDescription(
              name: 'customerId',
              type: _i1.getType<_i8.UuidValue?>(),
              nullable: true,
            ),
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saListAllUsers(
            session,
            customerId: params['customerId'],
            limit: params['limit'],
            offset: params['offset'],
          ),
        ),
        'saBlockUser': _i1.MethodConnector(
          name: 'saBlockUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'blocked': _i1.ParameterDescription(
              name: 'blocked',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint).saBlockUser(
            session,
            params['userId'],
            params['blocked'],
          ),
        ),
        'saDeleteCustomer': _i1.MethodConnector(
          name: 'saDeleteCustomer',
          params: {
            'customerId': _i1.ParameterDescription(
              name: 'customerId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saDeleteCustomer(
            session,
            params['customerId'],
          ),
        ),
        'saGetDashboard': _i1.MethodConnector(
          name: 'saGetDashboard',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saGetDashboard(session),
        ),
        'saListAllRoles': _i1.MethodConnector(
          name: 'saListAllRoles',
          params: {
            'customerId': _i1.ParameterDescription(
              name: 'customerId',
              type: _i1.getType<_i8.UuidValue?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saListAllRoles(
            session,
            customerId: params['customerId'],
          ),
        ),
        'saMoveUserToCustomer': _i1.MethodConnector(
          name: 'saMoveUserToCustomer',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'newCustomerId': _i1.ParameterDescription(
              name: 'newCustomerId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
            'newRoleId': _i1.ParameterDescription(
              name: 'newRoleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saMoveUserToCustomer(
            session,
            userId: params['userId'],
            newCustomerId: params['newCustomerId'],
            newRoleId: params['newRoleId'],
          ),
        ),
        'saListAllPermissions': _i1.MethodConnector(
          name: 'saListAllPermissions',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saListAllPermissions(session),
        ),
        'saCreateOrUpdateRole': _i1.MethodConnector(
          name: 'saCreateOrUpdateRole',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i9.Role>(),
              nullable: false,
            ),
            'permissionIds': _i1.ParameterDescription(
              name: 'permissionIds',
              type: _i1.getType<List<_i8.UuidValue>>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saCreateOrUpdateRole(
            session,
            role: params['role'],
            permissionIds: params['permissionIds'],
          ),
        ),
        'saDeleteRole': _i1.MethodConnector(
          name: 'saDeleteRole',
          params: {
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint).saDeleteRole(
            session,
            params['roleId'],
          ),
        ),
        'saGetRoleDetails': _i1.MethodConnector(
          name: 'saGetRoleDetails',
          params: {
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saGetRoleDetails(
            session,
            params['roleId'],
          ),
        ),
        'saUpdateUser': _i1.MethodConnector(
          name: 'saUpdateUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'userName': _i1.ParameterDescription(
              name: 'userName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'customerId': _i1.ParameterDescription(
              name: 'customerId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint).saUpdateUser(
            session,
            userId: params['userId'],
            userName: params['userName'],
            email: params['email'],
            customerId: params['customerId'],
            roleId: params['roleId'],
          ),
        ),
        'saDeleteUser': _i1.MethodConnector(
          name: 'saDeleteUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint).saDeleteUser(
            session,
            params['userId'],
          ),
        ),
        'saGetUserDetails': _i1.MethodConnector(
          name: 'saGetUserDetails',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint)
                  .saGetUserDetails(
            session,
            params['userId'],
          ),
        ),
        'saGetCustomer': _i1.MethodConnector(
          name: 'saGetCustomer',
          params: {
            'customerId': _i1.ParameterDescription(
              name: 'customerId',
              type: _i1.getType<_i8.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['superAdmin'] as _i4.SuperAdminEndpoint).saGetCustomer(
            session,
            params['customerId'],
          ),
        ),
      },
    );
    connectors['testData'] = _i1.EndpointConnector(
      name: 'testData',
      endpoint: endpoints['testData']!,
      methodConnectors: {
        'createTestData': _i1.MethodConnector(
          name: 'createTestData',
          params: {
            'testData': _i1.ParameterDescription(
              name: 'testData',
              type: _i1.getType<_i12.TestData>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['testData'] as _i5.TestDataEndpoint).createTestData(
            session,
            params['testData'],
          ),
        ),
        'listTestDatas': _i1.MethodConnector(
          name: 'listTestDatas',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['testData'] as _i5.TestDataEndpoint)
                  .listTestDatas(session),
        ),
        'updateTestData': _i1.MethodConnector(
          name: 'updateTestData',
          params: {
            'testData': _i1.ParameterDescription(
              name: 'testData',
              type: _i1.getType<_i12.TestData>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['testData'] as _i5.TestDataEndpoint).updateTestData(
            session,
            params['testData'],
          ),
        ),
        'deleteTestData': _i1.MethodConnector(
          name: 'deleteTestData',
          params: {
            'testData': _i1.ParameterDescription(
              name: 'testData',
              type: _i1.getType<_i12.TestData>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['testData'] as _i5.TestDataEndpoint).deleteTestData(
            session,
            params['testData'],
          ),
        ),
      },
    );
    connectors['userManagement'] = _i1.EndpointConnector(
      name: 'userManagement',
      endpoint: endpoints['userManagement']!,
      methodConnectors: {
        'getMyUserContext': _i1.MethodConnector(
          name: 'getMyUserContext',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userManagement'] as _i6.UserManagementEndpoint)
                  .getMyUserContext(session),
        )
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['greeting'] as _i7.GreetingEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i13.Endpoints()..initializeEndpoints(server);
  }
}
