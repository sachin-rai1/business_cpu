import 'dart:convert';

List<GetWorkspace> getWorkspaceFromJson(String str) => List<GetWorkspace>.from(
    json.decode(str).map((x) => GetWorkspace.fromJson(x)));

String getWorkspaceToJson(List<GetWorkspace> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetWorkspace {
  GetWorkspace({
    this.success,
    this.data,
  });

  bool? success;
  WorkspaceData? data;

  factory GetWorkspace.fromJson(Map<String, dynamic> json) => GetWorkspace(
        success: json["success"],
        data: json["data"] == null ? null : WorkspaceData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
      };
}

class WorkspaceData {
  WorkspaceData({
    this.result,
  });

  List<WorkspaceResult>? result;

  factory WorkspaceData.fromJson(Map<String, dynamic> json) => WorkspaceData(
        result: json["result"] == null
            ? []
            : List<WorkspaceResult>.from(json["result"]!.map((x) => WorkspaceResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result == null
            ? []
            : List<dynamic>.from(result!.map((x) => x.toJson())),
      };
}

class WorkspaceResult {
  WorkspaceResult({
    this.id,
    this.userId,
    this.name,
    this.uuid,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? userId;
  String? name;
  String? uuid;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory WorkspaceResult.fromJson(Map<String, dynamic> json) => WorkspaceResult(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        uuid: json["uuid"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "uuid": uuid,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
