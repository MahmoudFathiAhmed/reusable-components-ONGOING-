// // second form of di: https://github.com/MahmoudFathiAhmed/quotes_project-clean-archticture-course-/blob/master/lib/injection_container.dart
//
// final instance = GetIt.instance;
//
// Future<void> initAppModule() async{
//   //app module, it's a module where we put all generic dependencies
//
//   //shared prefs instances
//   final sharedPrefs = await SharedPreferences.getInstance();
//
//   instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
//
//   //app prefs instance
//   instance.registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
//
//   //network info
//   instance.registerLazySingleton<NetworkInfo>(
//           () => NetworkInfoImpl(InternetConnectionChecker()
//       ));
//   //dio factory
//   instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
//
//   Dio dio = await instance<DioFactory> ().getDio();
//   //app service client
//   instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
//
//   //remote data source
//   instance.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(instance()));
//
//   //local data source
//   instance.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());
//
//   //repository
//   instance.registerLazySingleton<Repository>(() => RepositoryImpl(instance(), instance(),instance()));
// }
//
//
//
// initLoginModule(){
//   if(!GetIt.I.isRegistered<LoginUseCase>()){
//     instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
//     instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
//   }
// }
//
// initForgotPasswordModule(){
//   if(!GetIt.I.isRegistered<ForgotPasswordUseCase>()){
//     instance.registerFactory<ForgotPasswordUseCase>(() => ForgotPasswordUseCase(instance()));
//     instance.registerFactory<ForgotPasswordViewModel>(() => ForgotPasswordViewModel(instance()));
//
//   }
// }
//
// initRegisterModule() {
//   if (!GetIt.I.isRegistered<RegisterUseCase>()) {
//     instance.registerFactory<RegisterUseCase>(() =>
//         RegisterUseCase(instance()));
//     instance.registerFactory<RegisterViewModel>(() =>
//         RegisterViewModel(instance()));
//     instance.registerFactory<ImagePicker>(() =>
//         ImagePicker());
//   }
// }
//
// initHomeModule() {
//   if (!GetIt.I.isRegistered<HomeUseCase>()) {
//     instance.registerFactory<HomeUseCase>(() =>
//         HomeUseCase(instance()));
//     instance.registerFactory<HomeViewModel>(() =>
//         HomeViewModel(instance()));
//   }
// }
//
// initStoreDetailsModule() {
//   if (!GetIt.I.isRegistered<StoreDetailsUseCase>()) {
//     instance.registerFactory<StoreDetailsUseCase>(() =>
//         StoreDetailsUseCase(instance()));
//     instance.registerFactory<StoreDetailsViewModel>(() =>
//         StoreDetailsViewModel(instance()));
//   }
// }