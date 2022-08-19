// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) data,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateInit value) init,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateData value) data,
    required TResult Function(DashboardStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;
}

/// @nodoc
abstract class _$$DashboardStateInitCopyWith<$Res> {
  factory _$$DashboardStateInitCopyWith(_$DashboardStateInit value,
          $Res Function(_$DashboardStateInit) then) =
      __$$DashboardStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardStateInitCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$DashboardStateInitCopyWith<$Res> {
  __$$DashboardStateInitCopyWithImpl(
      _$DashboardStateInit _value, $Res Function(_$DashboardStateInit) _then)
      : super(_value, (v) => _then(v as _$DashboardStateInit));

  @override
  _$DashboardStateInit get _value => super._value as _$DashboardStateInit;
}

/// @nodoc

class _$DashboardStateInit implements DashboardStateInit {
  const _$DashboardStateInit();

  @override
  String toString() {
    return 'DashboardState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) data,
    required TResult Function(String msg) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateInit value) init,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateData value) data,
    required TResult Function(DashboardStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class DashboardStateInit implements DashboardState {
  const factory DashboardStateInit() = _$DashboardStateInit;
}

/// @nodoc
abstract class _$$DashboardStateLoadingCopyWith<$Res> {
  factory _$$DashboardStateLoadingCopyWith(_$DashboardStateLoading value,
          $Res Function(_$DashboardStateLoading) then) =
      __$$DashboardStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardStateLoadingCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$DashboardStateLoadingCopyWith<$Res> {
  __$$DashboardStateLoadingCopyWithImpl(_$DashboardStateLoading _value,
      $Res Function(_$DashboardStateLoading) _then)
      : super(_value, (v) => _then(v as _$DashboardStateLoading));

  @override
  _$DashboardStateLoading get _value => super._value as _$DashboardStateLoading;
}

/// @nodoc

class _$DashboardStateLoading implements DashboardStateLoading {
  const _$DashboardStateLoading();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) data,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateInit value) init,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateData value) data,
    required TResult Function(DashboardStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DashboardStateLoading implements DashboardState {
  const factory DashboardStateLoading() = _$DashboardStateLoading;
}

/// @nodoc
abstract class _$$DashboardStateDataCopyWith<$Res> {
  factory _$$DashboardStateDataCopyWith(_$DashboardStateData value,
          $Res Function(_$DashboardStateData) then) =
      __$$DashboardStateDataCopyWithImpl<$Res>;
  $Res call({List<Project> projects});
}

/// @nodoc
class __$$DashboardStateDataCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$DashboardStateDataCopyWith<$Res> {
  __$$DashboardStateDataCopyWithImpl(
      _$DashboardStateData _value, $Res Function(_$DashboardStateData) _then)
      : super(_value, (v) => _then(v as _$DashboardStateData));

  @override
  _$DashboardStateData get _value => super._value as _$DashboardStateData;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_$DashboardStateData(
      projects: projects == freezed
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$DashboardStateData implements DashboardStateData {
  const _$DashboardStateData({required final List<Project> projects})
      : _projects = projects;

  final List<Project> _projects;
  @override
  List<Project> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'DashboardState.data(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateData &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  _$$DashboardStateDataCopyWith<_$DashboardStateData> get copyWith =>
      __$$DashboardStateDataCopyWithImpl<_$DashboardStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) data,
    required TResult Function(String msg) error,
  }) {
    return data(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
  }) {
    return data?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateInit value) init,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateData value) data,
    required TResult Function(DashboardStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DashboardStateData implements DashboardState {
  const factory DashboardStateData({required final List<Project> projects}) =
      _$DashboardStateData;

  List<Project> get projects;
  @JsonKey(ignore: true)
  _$$DashboardStateDataCopyWith<_$DashboardStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardStateErrorCopyWith<$Res> {
  factory _$$DashboardStateErrorCopyWith(_$DashboardStateError value,
          $Res Function(_$DashboardStateError) then) =
      __$$DashboardStateErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class __$$DashboardStateErrorCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$DashboardStateErrorCopyWith<$Res> {
  __$$DashboardStateErrorCopyWithImpl(
      _$DashboardStateError _value, $Res Function(_$DashboardStateError) _then)
      : super(_value, (v) => _then(v as _$DashboardStateError));

  @override
  _$DashboardStateError get _value => super._value as _$DashboardStateError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$DashboardStateError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DashboardStateError implements DashboardStateError {
  const _$DashboardStateError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'DashboardState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateError &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$DashboardStateErrorCopyWith<_$DashboardStateError> get copyWith =>
      __$$DashboardStateErrorCopyWithImpl<_$DashboardStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Project> projects) data,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Project> projects)? data,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStateInit value) init,
    required TResult Function(DashboardStateLoading value) loading,
    required TResult Function(DashboardStateData value) data,
    required TResult Function(DashboardStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStateInit value)? init,
    TResult Function(DashboardStateLoading value)? loading,
    TResult Function(DashboardStateData value)? data,
    TResult Function(DashboardStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DashboardStateError implements DashboardState {
  const factory DashboardStateError({required final String msg}) =
      _$DashboardStateError;

  String get msg;
  @JsonKey(ignore: true)
  _$$DashboardStateErrorCopyWith<_$DashboardStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
