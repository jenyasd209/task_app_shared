import 'package:task_app_shared/task_app_shared.dart';

main() {
  ApiService service = ApiService();
  service.getMovies().listen((movies){
    print(movies.length);
  });
}
