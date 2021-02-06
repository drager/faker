/// data based on: https://github.com/skratchdot/random-useragent
class UserAgents {
  List<UserAgent> userAgents = [];

  UserAgents({List<UserAgent>? userAgents}) : this.userAgents = userAgents ?? [];

  UserAgents.fromJson(Map<String, dynamic> json) {
    if (json['userAgents'] != null) {
      json['userAgents'].forEach((v) {
        userAgents.add(UserAgent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['userAgents'] = userAgents.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['folder'] = this.folder;
    data['description'] = this.description;
    data['userAgent'] = this.userAgent;
    data['appCodename'] = this.appCodename;
    data['appName'] = this.appName;
    data['appVersion'] = this.appVersion;
    data['platform'] = this.platform;
    data['vendor'] = this.vendor;
    data['vendorSub'] = this.vendorSub;
    data['browserName'] = this.browserName;
    data['browserMajor'] = this.browserMajor;
    data['browserVersion'] = this.browserVersion;
    data['deviceModel'] = this.deviceModel;
    data['deviceType'] = this.deviceType;
    data['deviceVendor'] = this.deviceVendor;
    data['engineName'] = this.engineName;
    data['engineVersion'] = this.engineVersion;
    data['osName'] = this.osName;
    data['osVersion'] = this.osVersion;
    data['cpuArchitecture'] = this.cpuArchitecture;
    return data;
  }
}
