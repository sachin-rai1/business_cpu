import 'dart:convert';

GetTaskData getTaskDataFromJson(String str) =>
    GetTaskData.fromJson(json.decode(str));

String getTaskDataToJson(GetTaskData data) => json.encode(data.toJson());

class GetTaskData {
  GetTaskData({
    this.success,
    this.data,
  });

  bool? success;
  Data? data;

  factory GetTaskData.fromJson(Map<String, dynamic> json) => GetTaskData(
        success: json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    this.result,
    this.message,
  });

  Result? result;
  String? message;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "result": result?.toJson(),
        "message": message,
      };
}

class Result {
  Result({
    this.myTask,
    this.toOther,
  });

  List<MyTask>? myTask;
  List<MyTask>? toOther;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        myTask: json["MyTask"] == null
            ? []
            : List<MyTask>.from(json["MyTask"]!.map((x) => MyTask.fromJson(x))),
        toOther: json["ToOther"] == null
            ? []
            : List<MyTask>.from(
                json["ToOther"]!.map((x) => MyTask.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "MyTask": myTask == null
            ? []
            : List<dynamic>.from(myTask!.map((x) => x.toJson())),
        "ToOther": toOther == null
            ? []
            : List<dynamic>.from(toOther!.map((x) => x.toJson())),
      };
}

class MyTask {
  MyTask({
    this.id,
    this.workspaceId,
    this.createdBy,
    this.assignTo,
    this.name,
    this.startDate,
    this.dueDate,
    this.revisionDate,
    this.remark,
    this.status,
    this.priority,
    this.createdAt,
    this.updatedAt,
    this.createdby,
    this.assign,
  });

  int? id;
  int? workspaceId;
  int? createdBy;
  int? assignTo;
  String? name;
  dynamic startDate;
  DateTime? dueDate;
  dynamic revisionDate;
  String? remark;
  int? status;
  int? priority;
  DateTime? createdAt;
  DateTime? updatedAt;
  Assign? createdby;
  Assign? assign;

  factory MyTask.fromJson(Map<String, dynamic> json) => MyTask(
        id: json["id"],
        workspaceId: json["workspace_id"],
        createdBy: json["created_by"],
        assignTo: json["assign_to"],
        name: json["name"],
        startDate: json["start_date"],
        dueDate:
            json["due_date"] == null ? null : DateTime.parse(json["due_date"]),
        revisionDate: json["revision_date"],
        remark: json["remark"],
        status: json["status"],
        priority: json["priority"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdby: json["createdby"] == null
            ? null
            : Assign.fromJson(json["createdby"]),
        assign: json["assign"] == null ? null : Assign.fromJson(json["assign"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "workspace_id": workspaceId,
        "created_by": createdBy,
        "assign_to": assignTo,
        "name": name,
        "start_date": startDate,
        "due_date":
            "${dueDate!.year.toString().padLeft(4, '0')}-${dueDate!.month.toString().padLeft(2, '0')}-${dueDate!.day.toString().padLeft(2, '0')}",
        "revision_date": revisionDate,
        "remark": remark,
        "status": status,
        "priority": priority,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "createdby": createdby?.toJson(),
        "assign": assign?.toJson(),
      };
}

class Assign {
  Assign({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Assign.fromJson(Map<String, dynamic> json) => Assign(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
