import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/apis/auth_api.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/core/core.dart';
import 'package:twitter_clone/core/provider.dart';
import 'package:twitter_clone/features/auth/controller/auth_controller.dart';
import 'package:twitter_clone/models/user_model.dart';

final userAPIProvider =Provider((ref) {
  return UserAPI(db: ref.watch(appwriteDatabaseProvider));
});

final currentUserAccountProvider = FutureProvider((ref) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.currentUser();
});


abstract class IUserApi {
  FutureEitherVoid saveUserData(UserModel userModel);
}

class UserAPI implements IUserApi {
  final Databases _db;
  UserAPI({required Databases db}) : _db = db;

  @override
  FutureEitherVoid saveUserData(UserModel userModel) async {
    try {
      await _db.createDocument(
          databaseId: AppwriteConstants.databaseId,
          collectionId: AppwriteConstants.usersCollection,
          documentId: ID.unique(),
          data: userModel.toMap());

      return right(null);
    } on AppwriteException catch (e, stackTrace) {
      return left(
          Failure(e.message ?? 'Some unexpected error occurred', stackTrace));
    } catch (e, stackTrace) {
      return left(Failure(e.toString(), stackTrace));
    }
  }
}
