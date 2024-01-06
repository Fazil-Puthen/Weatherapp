class Cloud{
  final int cloud;

  Cloud({
    required this.cloud
  });

factory Cloud.fromjson(Map<String,dynamic> json){
  return Cloud(cloud:json['all']);
}
}