/// data based on: https://github.com/skratchdot/random-useragent
class UserAgents {
  List<UserAgent>? userAgents;

  UserAgents({this.userAgents});

  UserAgents.fromJson(Map<String, dynamic> json) {
    if (json['userAgents'] != null) {
      userAgents = <UserAgent>[];
      json['userAgents'].forEach((v) {
        userAgents!.add(UserAgent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userAgents != null) {
      data['userAgents'] = userAgents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserAgent {
  String? folder;
  String? description;
  String? userAgent;
  String? appCodename;
  String? appName;
  String? appVersion;
  String? platform;
  String? vendor;
  String? vendorSub;
  String? browserName;
  String? browserMajor;
  String? browserVersion;
  String? deviceModel;
  String? deviceType;
  String? deviceVendor;
  String? engineName;
  String? engineVersion;
  String? osName;
  String? osVersion;
  String? cpuArchitecture;

  UserAgent(
      {this.folder,
      this.description,
      this.userAgent,
      this.appCodename,
      this.appName,
      this.appVersion,
      this.platform,
      this.vendor,
      this.vendorSub,
      this.browserName,
      this.browserMajor,
      this.browserVersion,
      this.deviceModel,
      this.deviceType,
      this.deviceVendor,
      this.engineName,
      this.engineVersion,
      this.osName,
      this.osVersion,
      this.cpuArchitecture});

  UserAgent.fromJson(Map<String, dynamic> json) {
    folder = json['folder'];
    description = json['description'];
    userAgent = json['userAgent'];
    appCodename = json['appCodename'];
    appName = json['appName'];
    appVersion = json['appVersion'];
    platform = json['platform'];
    vendor = json['vendor'];
    vendorSub = json['vendorSub'];
    browserName = json['browserName'];
    browserMajor = json['browserMajor'];
    browserVersion = json['browserVersion'];
    deviceModel = json['deviceModel'];
    deviceType = json['deviceType'];
    deviceVendor = json['deviceVendor'];
    engineName = json['engineName'];
    engineVersion = json['engineVersion'];
    osName = json['osName'];
    osVersion = json['osVersion'];
    cpuArchitecture = json['cpuArchitecture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['folder'] = folder;
    data['description'] = description;
    data['userAgent'] = userAgent;
    data['appCodename'] = appCodename;
    data['appName'] = appName;
    data['appVersion'] = appVersion;
    data['platform'] = platform;
    data['vendor'] = vendor;
    data['vendorSub'] = vendorSub;
    data['browserName'] = browserName;
    data['browserMajor'] = browserMajor;
    data['browserVersion'] = browserVersion;
    data['deviceModel'] = deviceModel;
    data['deviceType'] = deviceType;
    data['deviceVendor'] = deviceVendor;
    data['engineName'] = engineName;
    data['engineVersion'] = engineVersion;
    data['osName'] = osName;
    data['osVersion'] = osVersion;
    data['cpuArchitecture'] = cpuArchitecture;
    return data;
  }
}
