part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocState extends Equatable {
  const WeatherBlocState();

  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}

final class WeatherBlocFailure extends WeatherBlocState {
  final String message;

  const WeatherBlocFailure({required this.message});

  @override
  List<Object> get props => [message];
}

final class WeatherBlocSuccess extends WeatherBlocState {
  final Weather weather;

  const WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}

# touched on 2025-05-28T21:09:57.044841Z
# touched on 2025-05-28T21:11:09.149051Z