class WeatherRes {
  WeatherRes({
    this.queryCost,
    this.latitude,
    this.longitude,
    this.resolvedAddress,
    this.address,
    this.timezone,
    this.tzoffset,
    this.description,
    this.days,
    this.alerts,
    this.stations,
    this.currentConditions,
  });

  WeatherRes.fromJson(dynamic json) {
    queryCost = json['queryCost'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    resolvedAddress = json['resolvedAddress'];
    address = json['address'];
    timezone = json['timezone'];
    tzoffset = json['tzoffset'];
    description = json['description'];
    if (json['days'] != null) {
      days = [];
      json['days'].forEach((v) {
        days?.add(Days.fromJson(v));
      });
    }
    if (json['alerts'] != null) {
      alerts = [];
      json['alerts'].forEach((v) {
        alerts?.add((v));
      });
    }
    stations =
        json['stations'] != null ? Stations.fromJson(json['stations']) : null;
    currentConditions = json['currentConditions'] != null
        ? CurrentConditions.fromJson(json['currentConditions'])
        : null;
  }
  num? queryCost;
  num? latitude;
  num? longitude;
  String? resolvedAddress;
  String? address;
  String? timezone;
  num? tzoffset;
  String? description;
  List<Days>? days;
  List<dynamic>? alerts;
  Stations? stations;
  CurrentConditions? currentConditions;
  WeatherRes copyWith({
    num? queryCost,
    num? latitude,
    num? longitude,
    String? resolvedAddress,
    String? address,
    String? timezone,
    num? tzoffset,
    String? description,
    List<Days>? days,
    List<dynamic>? alerts,
    Stations? stations,
    CurrentConditions? currentConditions,
  }) =>
      WeatherRes(
        queryCost: queryCost ?? this.queryCost,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        resolvedAddress: resolvedAddress ?? this.resolvedAddress,
        address: address ?? this.address,
        timezone: timezone ?? this.timezone,
        tzoffset: tzoffset ?? this.tzoffset,
        description: description ?? this.description,
        days: days ?? this.days,
        alerts: alerts ?? this.alerts,
        stations: stations ?? this.stations,
        currentConditions: currentConditions ?? this.currentConditions,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['queryCost'] = queryCost;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['resolvedAddress'] = resolvedAddress;
    map['address'] = address;
    map['timezone'] = timezone;
    map['tzoffset'] = tzoffset;
    map['description'] = description;
    if (days != null) {
      map['days'] = days?.map((v) => v.toJson()).toList();
    }
    if (alerts != null) {
      map['alerts'] = alerts?.map((v) => v.toJson()).toList();
    }
    if (stations != null) {
      map['stations'] = stations?.toJson();
    }
    if (currentConditions != null) {
      map['currentConditions'] = currentConditions?.toJson();
    }
    return map;
  }
}

class CurrentConditions {
  CurrentConditions({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.conditions,
    this.icon,
    this.stations,
    this.source,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
  });

  CurrentConditions.fromJson(dynamic json) {
    datetime = json['datetime'];
    datetimeEpoch = json['datetimeEpoch'];
    temp = json['temp'];
    feelslike = json['feelslike'];
    humidity = json['humidity'];
    dew = json['dew'];
    precip = json['precip'];
    precipprob = json['precipprob'];
    snow = json['snow'];
    snowdepth = json['snowdepth'];
    preciptype =
        json['preciptype'] != null ? json['preciptype'].cast<String>() : [];
    windgust = json['windgust'];
    windspeed = json['windspeed'];
    winddir = json['winddir'];
    pressure = json['pressure'];
    visibility = json['visibility'];
    cloudcover = json['cloudcover'];
    solarradiation = json['solarradiation'];
    solarenergy = json['solarenergy'];
    uvindex = json['uvindex'];
    conditions = json['conditions'];
    icon = json['icon'];
    stations = json['stations'] != null ? json['stations'].cast<String>() : [];
    source = json['source'];
    sunrise = json['sunrise'];
    sunriseEpoch = json['sunriseEpoch'];
    sunset = json['sunset'];
    sunsetEpoch = json['sunsetEpoch'];
    moonphase = json['moonphase'];
  }
  String? datetime;
  num? datetimeEpoch;
  num? temp;
  num? feelslike;
  num? humidity;
  num? dew;
  num? precip;
  num? precipprob;
  num? snow;
  num? snowdepth;
  List<String>? preciptype;
  dynamic windgust;
  num? windspeed;
  num? winddir;
  num? pressure;
  num? visibility;
  num? cloudcover;
  num? solarradiation;
  num? solarenergy;
  num? uvindex;
  String? conditions;
  String? icon;
  List<String>? stations;
  String? source;
  String? sunrise;
  num? sunriseEpoch;
  String? sunset;
  num? sunsetEpoch;
  num? moonphase;
  CurrentConditions copyWith({
    String? datetime,
    num? datetimeEpoch,
    num? temp,
    num? feelslike,
    num? humidity,
    num? dew,
    num? precip,
    num? precipprob,
    num? snow,
    num? snowdepth,
    List<String>? preciptype,
    dynamic windgust,
    num? windspeed,
    num? winddir,
    num? pressure,
    num? visibility,
    num? cloudcover,
    num? solarradiation,
    num? solarenergy,
    num? uvindex,
    String? conditions,
    String? icon,
    List<String>? stations,
    String? source,
    String? sunrise,
    num? sunriseEpoch,
    String? sunset,
    num? sunsetEpoch,
    num? moonphase,
  }) =>
      CurrentConditions(
        datetime: datetime ?? this.datetime,
        datetimeEpoch: datetimeEpoch ?? this.datetimeEpoch,
        temp: temp ?? this.temp,
        feelslike: feelslike ?? this.feelslike,
        humidity: humidity ?? this.humidity,
        dew: dew ?? this.dew,
        precip: precip ?? this.precip,
        precipprob: precipprob ?? this.precipprob,
        snow: snow ?? this.snow,
        snowdepth: snowdepth ?? this.snowdepth,
        preciptype: preciptype ?? this.preciptype,
        windgust: windgust ?? this.windgust,
        windspeed: windspeed ?? this.windspeed,
        winddir: winddir ?? this.winddir,
        pressure: pressure ?? this.pressure,
        visibility: visibility ?? this.visibility,
        cloudcover: cloudcover ?? this.cloudcover,
        solarradiation: solarradiation ?? this.solarradiation,
        solarenergy: solarenergy ?? this.solarenergy,
        uvindex: uvindex ?? this.uvindex,
        conditions: conditions ?? this.conditions,
        icon: icon ?? this.icon,
        stations: stations ?? this.stations,
        source: source ?? this.source,
        sunrise: sunrise ?? this.sunrise,
        sunriseEpoch: sunriseEpoch ?? this.sunriseEpoch,
        sunset: sunset ?? this.sunset,
        sunsetEpoch: sunsetEpoch ?? this.sunsetEpoch,
        moonphase: moonphase ?? this.moonphase,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['datetimeEpoch'] = datetimeEpoch;
    map['temp'] = temp;
    map['feelslike'] = feelslike;
    map['humidity'] = humidity;
    map['dew'] = dew;
    map['precip'] = precip;
    map['precipprob'] = precipprob;
    map['snow'] = snow;
    map['snowdepth'] = snowdepth;
    map['preciptype'] = preciptype;
    map['windgust'] = windgust;
    map['windspeed'] = windspeed;
    map['winddir'] = winddir;
    map['pressure'] = pressure;
    map['visibility'] = visibility;
    map['cloudcover'] = cloudcover;
    map['solarradiation'] = solarradiation;
    map['solarenergy'] = solarenergy;
    map['uvindex'] = uvindex;
    map['conditions'] = conditions;
    map['icon'] = icon;
    map['stations'] = stations;
    map['source'] = source;
    map['sunrise'] = sunrise;
    map['sunriseEpoch'] = sunriseEpoch;
    map['sunset'] = sunset;
    map['sunsetEpoch'] = sunsetEpoch;
    map['moonphase'] = moonphase;
    return map;
  }
}

class Stations {
  Stations({
    this.vghs,
    this.veat,
  });

  Stations.fromJson(dynamic json) {
    vghs = json['VGHS'] != null ? Vghs.fromJson(json['VGHS']) : null;
    veat = json['VEAT'] != null ? Veat.fromJson(json['VEAT']) : null;
  }
  Vghs? vghs;
  Veat? veat;
  Stations copyWith({
    Vghs? vghs,
    Veat? veat,
  }) =>
      Stations(
        vghs: vghs ?? this.vghs,
        veat: veat ?? this.veat,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (vghs != null) {
      map['VGHS'] = vghs?.toJson();
    }
    if (veat != null) {
      map['VEAT'] = veat?.toJson();
    }
    return map;
  }
}

class Veat {
  Veat({
    this.distance,
    this.latitude,
    this.longitude,
    this.useCount,
    this.id,
    this.name,
    this.quality,
    this.contribution,
  });

  Veat.fromJson(dynamic json) {
    distance = json['distance'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    useCount = json['useCount'];
    id = json['id'];
    name = json['name'];
    quality = json['quality'];
    contribution = json['contribution'];
  }
  num? distance;
  num? latitude;
  num? longitude;
  num? useCount;
  String? id;
  String? name;
  num? quality;
  num? contribution;
  Veat copyWith({
    num? distance,
    num? latitude,
    num? longitude,
    num? useCount,
    String? id,
    String? name,
    num? quality,
    num? contribution,
  }) =>
      Veat(
        distance: distance ?? this.distance,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        useCount: useCount ?? this.useCount,
        id: id ?? this.id,
        name: name ?? this.name,
        quality: quality ?? this.quality,
        contribution: contribution ?? this.contribution,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['distance'] = distance;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['useCount'] = useCount;
    map['id'] = id;
    map['name'] = name;
    map['quality'] = quality;
    map['contribution'] = contribution;
    return map;
  }
}

class Vghs {
  Vghs({
    this.distance,
    this.latitude,
    this.longitude,
    this.useCount,
    this.id,
    this.name,
    this.quality,
    this.contribution,
  });

  Vghs.fromJson(dynamic json) {
    distance = json['distance'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    useCount = json['useCount'];
    id = json['id'];
    name = json['name'];
    quality = json['quality'];
    contribution = json['contribution'];
  }
  num? distance;
  num? latitude;
  num? longitude;
  num? useCount;
  String? id;
  String? name;
  num? quality;
  num? contribution;
  Vghs copyWith({
    num? distance,
    num? latitude,
    num? longitude,
    num? useCount,
    String? id,
    String? name,
    num? quality,
    num? contribution,
  }) =>
      Vghs(
        distance: distance ?? this.distance,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        useCount: useCount ?? this.useCount,
        id: id ?? this.id,
        name: name ?? this.name,
        quality: quality ?? this.quality,
        contribution: contribution ?? this.contribution,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['distance'] = distance;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['useCount'] = useCount;
    map['id'] = id;
    map['name'] = name;
    map['quality'] = quality;
    map['contribution'] = contribution;
    return map;
  }
}

class Days {
  Days({
    this.datetime,
    this.datetimeEpoch,
    this.tempmax,
    this.tempmin,
    this.temp,
    this.feelslikemax,
    this.feelslikemin,
    this.feelslike,
    this.dew,
    this.humidity,
    this.precip,
    this.precipprob,
    this.precipcover,
    this.preciptype,
    this.snow,
    this.snowdepth,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.cloudcover,
    this.visibility,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
    this.conditions,
    this.description,
    this.icon,
    this.stations,
    this.source,
    this.hours,
  });

  Days.fromJson(dynamic json) {
    datetime = json['datetime'];
    datetimeEpoch = json['datetimeEpoch'];
    tempmax = json['tempmax'];
    tempmin = json['tempmin'];
    temp = json['temp'];
    feelslikemax = json['feelslikemax'];
    feelslikemin = json['feelslikemin'];
    feelslike = json['feelslike'];
    dew = json['dew'];
    humidity = json['humidity'];
    precip = json['precip'];
    precipprob = json['precipprob'];
    precipcover = json['precipcover'];
    preciptype =
        json['preciptype'] != null ? json['preciptype'].cast<String>() : [];
    snow = json['snow'];
    snowdepth = json['snowdepth'];
    windgust = json['windgust'];
    windspeed = json['windspeed'];
    winddir = json['winddir'];
    pressure = json['pressure'];
    cloudcover = json['cloudcover'];
    visibility = json['visibility'];
    solarradiation = json['solarradiation'];
    solarenergy = json['solarenergy'];
    uvindex = json['uvindex'];
    severerisk = json['severerisk'];
    sunrise = json['sunrise'];
    sunriseEpoch = json['sunriseEpoch'];
    sunset = json['sunset'];
    sunsetEpoch = json['sunsetEpoch'];
    moonphase = json['moonphase'];
    conditions = json['conditions'];
    description = json['description'];
    icon = json['icon'];
    stations = json['stations'] != null ? json['stations'].cast<String>() : [];
    source = json['source'];
    if (json['hours'] != null) {
      hours = [];
      json['hours'].forEach((v) {
        hours?.add(Hours.fromJson(v));
      });
    }
  }
  String? datetime;
  num? datetimeEpoch;
  num? tempmax;
  num? tempmin;
  num? temp;
  num? feelslikemax;
  num? feelslikemin;
  num? feelslike;
  num? dew;
  num? humidity;
  num? precip;
  num? precipprob;
  num? precipcover;
  List<String>? preciptype;
  num? snow;
  num? snowdepth;
  num? windgust;
  num? windspeed;
  num? winddir;
  num? pressure;
  num? cloudcover;
  num? visibility;
  num? solarradiation;
  num? solarenergy;
  num? uvindex;
  num? severerisk;
  String? sunrise;
  num? sunriseEpoch;
  String? sunset;
  num? sunsetEpoch;
  num? moonphase;
  String? conditions;
  String? description;
  String? icon;
  List<String>? stations;
  String? source;
  List<Hours>? hours;
  Days copyWith({
    String? datetime,
    num? datetimeEpoch,
    num? tempmax,
    num? tempmin,
    num? temp,
    num? feelslikemax,
    num? feelslikemin,
    num? feelslike,
    num? dew,
    num? humidity,
    num? precip,
    num? precipprob,
    num? precipcover,
    List<String>? preciptype,
    num? snow,
    num? snowdepth,
    num? windgust,
    num? windspeed,
    num? winddir,
    num? pressure,
    num? cloudcover,
    num? visibility,
    num? solarradiation,
    num? solarenergy,
    num? uvindex,
    num? severerisk,
    String? sunrise,
    num? sunriseEpoch,
    String? sunset,
    num? sunsetEpoch,
    num? moonphase,
    String? conditions,
    String? description,
    String? icon,
    List<String>? stations,
    String? source,
    List<Hours>? hours,
  }) =>
      Days(
        datetime: datetime ?? this.datetime,
        datetimeEpoch: datetimeEpoch ?? this.datetimeEpoch,
        tempmax: tempmax ?? this.tempmax,
        tempmin: tempmin ?? this.tempmin,
        temp: temp ?? this.temp,
        feelslikemax: feelslikemax ?? this.feelslikemax,
        feelslikemin: feelslikemin ?? this.feelslikemin,
        feelslike: feelslike ?? this.feelslike,
        dew: dew ?? this.dew,
        humidity: humidity ?? this.humidity,
        precip: precip ?? this.precip,
        precipprob: precipprob ?? this.precipprob,
        precipcover: precipcover ?? this.precipcover,
        preciptype: preciptype ?? this.preciptype,
        snow: snow ?? this.snow,
        snowdepth: snowdepth ?? this.snowdepth,
        windgust: windgust ?? this.windgust,
        windspeed: windspeed ?? this.windspeed,
        winddir: winddir ?? this.winddir,
        pressure: pressure ?? this.pressure,
        cloudcover: cloudcover ?? this.cloudcover,
        visibility: visibility ?? this.visibility,
        solarradiation: solarradiation ?? this.solarradiation,
        solarenergy: solarenergy ?? this.solarenergy,
        uvindex: uvindex ?? this.uvindex,
        severerisk: severerisk ?? this.severerisk,
        sunrise: sunrise ?? this.sunrise,
        sunriseEpoch: sunriseEpoch ?? this.sunriseEpoch,
        sunset: sunset ?? this.sunset,
        sunsetEpoch: sunsetEpoch ?? this.sunsetEpoch,
        moonphase: moonphase ?? this.moonphase,
        conditions: conditions ?? this.conditions,
        description: description ?? this.description,
        icon: icon ?? this.icon,
        stations: stations ?? this.stations,
        source: source ?? this.source,
        hours: hours ?? this.hours,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['datetimeEpoch'] = datetimeEpoch;
    map['tempmax'] = tempmax;
    map['tempmin'] = tempmin;
    map['temp'] = temp;
    map['feelslikemax'] = feelslikemax;
    map['feelslikemin'] = feelslikemin;
    map['feelslike'] = feelslike;
    map['dew'] = dew;
    map['humidity'] = humidity;
    map['precip'] = precip;
    map['precipprob'] = precipprob;
    map['precipcover'] = precipcover;
    map['preciptype'] = preciptype;
    map['snow'] = snow;
    map['snowdepth'] = snowdepth;
    map['windgust'] = windgust;
    map['windspeed'] = windspeed;
    map['winddir'] = winddir;
    map['pressure'] = pressure;
    map['cloudcover'] = cloudcover;
    map['visibility'] = visibility;
    map['solarradiation'] = solarradiation;
    map['solarenergy'] = solarenergy;
    map['uvindex'] = uvindex;
    map['severerisk'] = severerisk;
    map['sunrise'] = sunrise;
    map['sunriseEpoch'] = sunriseEpoch;
    map['sunset'] = sunset;
    map['sunsetEpoch'] = sunsetEpoch;
    map['moonphase'] = moonphase;
    map['conditions'] = conditions;
    map['description'] = description;
    map['icon'] = icon;
    map['stations'] = stations;
    map['source'] = source;
    if (hours != null) {
      map['hours'] = hours?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Hours {
  Hours({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.conditions,
    this.icon,
    this.stations,
    this.source,
  });

  Hours.fromJson(dynamic json) {
    datetime = json['datetime'];
    datetimeEpoch = json['datetimeEpoch'];
    temp = json['temp'];
    feelslike = json['feelslike'];
    humidity = json['humidity'];
    dew = json['dew'];
    precip = json['precip'];
    precipprob = json['precipprob'];
    snow = json['snow'];
    snowdepth = json['snowdepth'];
    preciptype =
        json['preciptype'] != null ? json['preciptype'].cast<String>() : [];
    windgust = json['windgust'];
    windspeed = json['windspeed'];
    winddir = json['winddir'];
    pressure = json['pressure'];
    visibility = json['visibility'];
    cloudcover = json['cloudcover'];
    solarradiation = json['solarradiation'];
    solarenergy = json['solarenergy'];
    uvindex = json['uvindex'];
    severerisk = json['severerisk'];
    conditions = json['conditions'];
    icon = json['icon'];
    stations = json['stations'] != null ? json['stations'].cast<String>() : [];
    source = json['source'];
  }
  String? datetime;
  num? datetimeEpoch;
  num? temp;
  num? feelslike;
  num? humidity;
  num? dew;
  num? precip;
  num? precipprob;
  num? snow;
  num? snowdepth;
  List<String>? preciptype;
  num? windgust;
  num? windspeed;
  num? winddir;
  num? pressure;
  num? visibility;
  num? cloudcover;
  num? solarradiation;
  num? solarenergy;
  num? uvindex;
  num? severerisk;
  String? conditions;
  String? icon;
  List<String>? stations;
  String? source;
  Hours copyWith({
    String? datetime,
    num? datetimeEpoch,
    num? temp,
    num? feelslike,
    num? humidity,
    num? dew,
    num? precip,
    num? precipprob,
    num? snow,
    num? snowdepth,
    List<String>? preciptype,
    num? windgust,
    num? windspeed,
    num? winddir,
    num? pressure,
    num? visibility,
    num? cloudcover,
    num? solarradiation,
    num? solarenergy,
    num? uvindex,
    num? severerisk,
    String? conditions,
    String? icon,
    List<String>? stations,
    String? source,
  }) =>
      Hours(
        datetime: datetime ?? this.datetime,
        datetimeEpoch: datetimeEpoch ?? this.datetimeEpoch,
        temp: temp ?? this.temp,
        feelslike: feelslike ?? this.feelslike,
        humidity: humidity ?? this.humidity,
        dew: dew ?? this.dew,
        precip: precip ?? this.precip,
        precipprob: precipprob ?? this.precipprob,
        snow: snow ?? this.snow,
        snowdepth: snowdepth ?? this.snowdepth,
        preciptype: preciptype ?? this.preciptype,
        windgust: windgust ?? this.windgust,
        windspeed: windspeed ?? this.windspeed,
        winddir: winddir ?? this.winddir,
        pressure: pressure ?? this.pressure,
        visibility: visibility ?? this.visibility,
        cloudcover: cloudcover ?? this.cloudcover,
        solarradiation: solarradiation ?? this.solarradiation,
        solarenergy: solarenergy ?? this.solarenergy,
        uvindex: uvindex ?? this.uvindex,
        severerisk: severerisk ?? this.severerisk,
        conditions: conditions ?? this.conditions,
        icon: icon ?? this.icon,
        stations: stations ?? this.stations,
        source: source ?? this.source,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['datetimeEpoch'] = datetimeEpoch;
    map['temp'] = temp;
    map['feelslike'] = feelslike;
    map['humidity'] = humidity;
    map['dew'] = dew;
    map['precip'] = precip;
    map['precipprob'] = precipprob;
    map['snow'] = snow;
    map['snowdepth'] = snowdepth;
    map['preciptype'] = preciptype;
    map['windgust'] = windgust;
    map['windspeed'] = windspeed;
    map['winddir'] = winddir;
    map['pressure'] = pressure;
    map['visibility'] = visibility;
    map['cloudcover'] = cloudcover;
    map['solarradiation'] = solarradiation;
    map['solarenergy'] = solarenergy;
    map['uvindex'] = uvindex;
    map['severerisk'] = severerisk;
    map['conditions'] = conditions;
    map['icon'] = icon;
    map['stations'] = stations;
    map['source'] = source;
    return map;
  }
}
