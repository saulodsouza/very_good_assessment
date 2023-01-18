// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:very_good_coffee/core/dio_injectable_module.dart' as _i11;
import 'package:very_good_coffee/feed/bloc/favorite_bloc.dart' as _i9;
import 'package:very_good_coffee/feed/bloc/feed_bloc.dart' as _i10;
import 'package:very_good_coffee/feed/data/coffee_local_data_source.dart'
    as _i4;
import 'package:very_good_coffee/feed/data/coffee_remote_data_source.dart'
    as _i5;
import 'package:very_good_coffee/feed/data/coffee_repository.dart' as _i7;
import 'package:very_good_coffee/feed/domain/i_coffee_repository.dart' as _i6;
import 'package:very_good_coffee/feed/feed.dart' as _i8;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioInjectableModule = _$DioInjectableModule();
    gh.lazySingleton<_i3.Dio>(() => dioInjectableModule.client);
    gh.factory<_i4.ICoffeeLocalDataSource>(() => _i4.CoffeeLocalDataSource());
    gh.factory<_i5.ICoffeeRemoteDataSource>(
        () => _i5.CoffeeRemoteDataSource(gh<_i3.Dio>()));
    gh.factory<_i6.ICoffeeRepository>(() => _i7.CoffeeRepository(
          gh<_i8.ICoffeeRemoteDataSource>(),
          gh<_i8.ICoffeeLocalDataSource>(),
        ));
    gh.factory<_i9.FavoriteBloc>(
        () => _i9.FavoriteBloc(gh<_i6.ICoffeeRepository>()));
    gh.factory<_i10.FeedBloc>(() => _i10.FeedBloc(gh<_i6.ICoffeeRepository>()));
    return this;
  }
}

class _$DioInjectableModule extends _i11.DioInjectableModule {}
