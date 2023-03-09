import 'dart:convert';

List<GetRoleData> getRoleDataFromJson(String str) => List<GetRoleData>.from(json.decode(str).map((x) => GetRoleData.fromJson(x)));

String getRoleDataToJson(List<GetRoleData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetRoleData {
  GetRoleData({
    this.success,
    this.data,
  });

  bool? success;
  RoleData? data;

  factory GetRoleData.fromJson(Map<String, dynamic> json) => GetRoleData(
    success: json["success"],
    data: json["data"] == null ? null : RoleData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data?.toJson(),
  };
}

class RoleData {
  RoleData({
    this.result,
  });

  List<RoleResult>? result;

  factory RoleData.fromJson(Map<String, dynamic> json) => RoleData(
    result: json["result"] == null ? [] : List<RoleResult>.from(json["result"]!.map((x) => RoleResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class RoleResult {
  RoleResult({
    this.id,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  int? status;
  String? createdAt;
  DateTime? updatedAt;

  factory RoleResult.fromJson(Map<String, dynamic> json) => RoleResult(
    id: json["id"],
    name: json["name"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt?.toIso8601String(),
  };
}
