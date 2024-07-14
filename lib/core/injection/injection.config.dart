// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/data_sources/i_posts_datasource.dart' as _i4;
import '../../features/home/data/data_sources/posts_datasource.dart' as _i5;
import '../../features/home/data/repositories/posts_repo.dart' as _i7;
import '../../features/home/domain/repositories/i_posts_repo.dart' as _i6;
import '../../features/home/domain/use_cases/get_post_details_usecase.dart'
    as _i9;
import '../../features/home/domain/use_cases/get_posts_usecase.dart' as _i8;
import '../../features/home/presentation/manager/home/home_bloc.dart' as _i10;
import '../common/bloc/nav/nav_cubit.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.NavCubit>(() => _i3.NavCubit());
    gh.lazySingleton<_i4.IPostsDatasource>(() => _i5.PostsDatasource());
    gh.lazySingleton<_i6.IPostsRepo>(
        () => _i7.PostsRepo(gh<_i4.IPostsDatasource>()));
    gh.factory<_i8.GetPostsUsecase>(
        () => _i8.GetPostsUsecase(gh<_i6.IPostsRepo>()));
    gh.factory<_i9.GetPostDetailsUsecase>(
        () => _i9.GetPostDetailsUsecase(gh<_i6.IPostsRepo>()));
    gh.lazySingleton<_i10.HomeBloc>(() => _i10.HomeBloc(
          gh<_i8.GetPostsUsecase>(),
          gh<_i9.GetPostDetailsUsecase>(),
        ));
    return this;
  }
}
