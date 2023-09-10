// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersInformationTable extends UsersInformation
    with TableInfo<$UsersInformationTable, UsersInformationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersInformationTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _playerIdMeta =
      const VerificationMeta('playerId');
  @override
  late final GeneratedColumn<String> playerId = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 15, maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _countryCodeMeta =
      const VerificationMeta('countryCode');
  @override
  late final GeneratedColumn<String> countryCode = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _adMobInterstitialsMeta =
      const VerificationMeta('adMobInterstitials');
  @override
  late final GeneratedColumn<int> adMobInterstitials = GeneratedColumn<int>(
      'adMobInt', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _adMobRewardedMeta =
      const VerificationMeta('adMobRewarded');
  @override
  late final GeneratedColumn<int> adMobRewarded = GeneratedColumn<int>(
      'adMobRew', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _adUnityInterstitialsMeta =
      const VerificationMeta('adUnityInterstitials');
  @override
  late final GeneratedColumn<int> adUnityInterstitials = GeneratedColumn<int>(
      'adUnityInt', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _adUnityRewardedMeta =
      const VerificationMeta('adUnityRewarded');
  @override
  late final GeneratedColumn<int> adUnityRewarded = GeneratedColumn<int>(
      'adUnityRew', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _moneyInMeta =
      const VerificationMeta('moneyIn');
  @override
  late final GeneratedColumn<int> moneyIn = GeneratedColumn<int>(
      'money_in', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _moneyOutMeta =
      const VerificationMeta('moneyOut');
  @override
  late final GeneratedColumn<int> moneyOut = GeneratedColumn<int>(
      'money_out', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  @override
  late final GeneratedColumn<int> balance = GeneratedColumn<int>(
      'balance', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _goldBalanceMeta =
      const VerificationMeta('goldBalance');
  @override
  late final GeneratedColumn<int> goldBalance = GeneratedColumn<int>(
      'gold_balance', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<DateTime> createdTime = GeneratedColumn<DateTime>(
      'created_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastActivityMeta =
      const VerificationMeta('lastActivity');
  @override
  late final GeneratedColumn<DateTime> lastActivity = GeneratedColumn<DateTime>(
      'last_activity', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _sessionsMeta =
      const VerificationMeta('sessions');
  @override
  late final GeneratedColumn<int> sessions = GeneratedColumn<int>(
      'sessions', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns => [
        playerId,
        countryCode,
        adMobInterstitials,
        adMobRewarded,
        adUnityInterstitials,
        adUnityRewarded,
        moneyIn,
        moneyOut,
        balance,
        goldBalance,
        level,
        createdTime,
        lastActivity,
        sessions
      ];
  @override
  String get aliasedName => _alias ?? 'users_information';
  @override
  String get actualTableName => 'users_information';
  @override
  VerificationContext validateIntegrity(
      Insertable<UsersInformationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_playerIdMeta,
          playerId.isAcceptableOrUnknown(data['id']!, _playerIdMeta));
    } else if (isInserting) {
      context.missing(_playerIdMeta);
    }
    if (data.containsKey('country')) {
      context.handle(
          _countryCodeMeta,
          countryCode.isAcceptableOrUnknown(
              data['country']!, _countryCodeMeta));
    } else if (isInserting) {
      context.missing(_countryCodeMeta);
    }
    if (data.containsKey('adMobInt')) {
      context.handle(
          _adMobInterstitialsMeta,
          adMobInterstitials.isAcceptableOrUnknown(
              data['adMobInt']!, _adMobInterstitialsMeta));
    }
    if (data.containsKey('adMobRew')) {
      context.handle(
          _adMobRewardedMeta,
          adMobRewarded.isAcceptableOrUnknown(
              data['adMobRew']!, _adMobRewardedMeta));
    }
    if (data.containsKey('adUnityInt')) {
      context.handle(
          _adUnityInterstitialsMeta,
          adUnityInterstitials.isAcceptableOrUnknown(
              data['adUnityInt']!, _adUnityInterstitialsMeta));
    }
    if (data.containsKey('adUnityRew')) {
      context.handle(
          _adUnityRewardedMeta,
          adUnityRewarded.isAcceptableOrUnknown(
              data['adUnityRew']!, _adUnityRewardedMeta));
    }
    if (data.containsKey('money_in')) {
      context.handle(_moneyInMeta,
          moneyIn.isAcceptableOrUnknown(data['money_in']!, _moneyInMeta));
    }
    if (data.containsKey('money_out')) {
      context.handle(_moneyOutMeta,
          moneyOut.isAcceptableOrUnknown(data['money_out']!, _moneyOutMeta));
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('gold_balance')) {
      context.handle(
          _goldBalanceMeta,
          goldBalance.isAcceptableOrUnknown(
              data['gold_balance']!, _goldBalanceMeta));
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('last_activity')) {
      context.handle(
          _lastActivityMeta,
          lastActivity.isAcceptableOrUnknown(
              data['last_activity']!, _lastActivityMeta));
    } else if (isInserting) {
      context.missing(_lastActivityMeta);
    }
    if (data.containsKey('sessions')) {
      context.handle(_sessionsMeta,
          sessions.isAcceptableOrUnknown(data['sessions']!, _sessionsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {playerId};
  @override
  UsersInformationData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UsersInformationData(
      playerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      countryCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      adMobInterstitials: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}adMobInt'])!,
      adMobRewarded: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}adMobRew'])!,
      adUnityInterstitials: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}adUnityInt'])!,
      adUnityRewarded: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}adUnityRew'])!,
      moneyIn: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}money_in'])!,
      moneyOut: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}money_out'])!,
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}balance'])!,
      goldBalance: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}gold_balance'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_time'])!,
      lastActivity: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_activity'])!,
      sessions: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sessions'])!,
    );
  }

  @override
  $UsersInformationTable createAlias(String alias) {
    return $UsersInformationTable(attachedDatabase, alias);
  }
}

class UsersInformationData extends DataClass
    implements Insertable<UsersInformationData> {
  final String playerId;
  final String countryCode;
  final int adMobInterstitials;
  final int adMobRewarded;
  final int adUnityInterstitials;
  final int adUnityRewarded;
  final int moneyIn;
  final int moneyOut;
  final int balance;
  final int goldBalance;
  final int level;
  final DateTime createdTime;
  final DateTime lastActivity;
  final int sessions;
  const UsersInformationData(
      {required this.playerId,
      required this.countryCode,
      required this.adMobInterstitials,
      required this.adMobRewarded,
      required this.adUnityInterstitials,
      required this.adUnityRewarded,
      required this.moneyIn,
      required this.moneyOut,
      required this.balance,
      required this.goldBalance,
      required this.level,
      required this.createdTime,
      required this.lastActivity,
      required this.sessions});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(playerId);
    map['country'] = Variable<String>(countryCode);
    map['adMobInt'] = Variable<int>(adMobInterstitials);
    map['adMobRew'] = Variable<int>(adMobRewarded);
    map['adUnityInt'] = Variable<int>(adUnityInterstitials);
    map['adUnityRew'] = Variable<int>(adUnityRewarded);
    map['money_in'] = Variable<int>(moneyIn);
    map['money_out'] = Variable<int>(moneyOut);
    map['balance'] = Variable<int>(balance);
    map['gold_balance'] = Variable<int>(goldBalance);
    map['level'] = Variable<int>(level);
    map['created_time'] = Variable<DateTime>(createdTime);
    map['last_activity'] = Variable<DateTime>(lastActivity);
    map['sessions'] = Variable<int>(sessions);
    return map;
  }

  UsersInformationCompanion toCompanion(bool nullToAbsent) {
    return UsersInformationCompanion(
      playerId: Value(playerId),
      countryCode: Value(countryCode),
      adMobInterstitials: Value(adMobInterstitials),
      adMobRewarded: Value(adMobRewarded),
      adUnityInterstitials: Value(adUnityInterstitials),
      adUnityRewarded: Value(adUnityRewarded),
      moneyIn: Value(moneyIn),
      moneyOut: Value(moneyOut),
      balance: Value(balance),
      goldBalance: Value(goldBalance),
      level: Value(level),
      createdTime: Value(createdTime),
      lastActivity: Value(lastActivity),
      sessions: Value(sessions),
    );
  }

  factory UsersInformationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UsersInformationData(
      playerId: serializer.fromJson<String>(json['playerId']),
      countryCode: serializer.fromJson<String>(json['countryCode']),
      adMobInterstitials: serializer.fromJson<int>(json['adMobInterstitials']),
      adMobRewarded: serializer.fromJson<int>(json['adMobRewarded']),
      adUnityInterstitials:
          serializer.fromJson<int>(json['adUnityInterstitials']),
      adUnityRewarded: serializer.fromJson<int>(json['adUnityRewarded']),
      moneyIn: serializer.fromJson<int>(json['moneyIn']),
      moneyOut: serializer.fromJson<int>(json['moneyOut']),
      balance: serializer.fromJson<int>(json['balance']),
      goldBalance: serializer.fromJson<int>(json['goldBalance']),
      level: serializer.fromJson<int>(json['level']),
      createdTime: serializer.fromJson<DateTime>(json['createdTime']),
      lastActivity: serializer.fromJson<DateTime>(json['lastActivity']),
      sessions: serializer.fromJson<int>(json['sessions']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'playerId': serializer.toJson<String>(playerId),
      'countryCode': serializer.toJson<String>(countryCode),
      'adMobInterstitials': serializer.toJson<int>(adMobInterstitials),
      'adMobRewarded': serializer.toJson<int>(adMobRewarded),
      'adUnityInterstitials': serializer.toJson<int>(adUnityInterstitials),
      'adUnityRewarded': serializer.toJson<int>(adUnityRewarded),
      'moneyIn': serializer.toJson<int>(moneyIn),
      'moneyOut': serializer.toJson<int>(moneyOut),
      'balance': serializer.toJson<int>(balance),
      'goldBalance': serializer.toJson<int>(goldBalance),
      'level': serializer.toJson<int>(level),
      'createdTime': serializer.toJson<DateTime>(createdTime),
      'lastActivity': serializer.toJson<DateTime>(lastActivity),
      'sessions': serializer.toJson<int>(sessions),
    };
  }

  UsersInformationData copyWith(
          {String? playerId,
          String? countryCode,
          int? adMobInterstitials,
          int? adMobRewarded,
          int? adUnityInterstitials,
          int? adUnityRewarded,
          int? moneyIn,
          int? moneyOut,
          int? balance,
          int? goldBalance,
          int? level,
          DateTime? createdTime,
          DateTime? lastActivity,
          int? sessions}) =>
      UsersInformationData(
        playerId: playerId ?? this.playerId,
        countryCode: countryCode ?? this.countryCode,
        adMobInterstitials: adMobInterstitials ?? this.adMobInterstitials,
        adMobRewarded: adMobRewarded ?? this.adMobRewarded,
        adUnityInterstitials: adUnityInterstitials ?? this.adUnityInterstitials,
        adUnityRewarded: adUnityRewarded ?? this.adUnityRewarded,
        moneyIn: moneyIn ?? this.moneyIn,
        moneyOut: moneyOut ?? this.moneyOut,
        balance: balance ?? this.balance,
        goldBalance: goldBalance ?? this.goldBalance,
        level: level ?? this.level,
        createdTime: createdTime ?? this.createdTime,
        lastActivity: lastActivity ?? this.lastActivity,
        sessions: sessions ?? this.sessions,
      );
  @override
  String toString() {
    return (StringBuffer('UsersInformationData(')
          ..write('playerId: $playerId, ')
          ..write('countryCode: $countryCode, ')
          ..write('adMobInterstitials: $adMobInterstitials, ')
          ..write('adMobRewarded: $adMobRewarded, ')
          ..write('adUnityInterstitials: $adUnityInterstitials, ')
          ..write('adUnityRewarded: $adUnityRewarded, ')
          ..write('moneyIn: $moneyIn, ')
          ..write('moneyOut: $moneyOut, ')
          ..write('balance: $balance, ')
          ..write('goldBalance: $goldBalance, ')
          ..write('level: $level, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastActivity: $lastActivity, ')
          ..write('sessions: $sessions')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      playerId,
      countryCode,
      adMobInterstitials,
      adMobRewarded,
      adUnityInterstitials,
      adUnityRewarded,
      moneyIn,
      moneyOut,
      balance,
      goldBalance,
      level,
      createdTime,
      lastActivity,
      sessions);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UsersInformationData &&
          other.playerId == this.playerId &&
          other.countryCode == this.countryCode &&
          other.adMobInterstitials == this.adMobInterstitials &&
          other.adMobRewarded == this.adMobRewarded &&
          other.adUnityInterstitials == this.adUnityInterstitials &&
          other.adUnityRewarded == this.adUnityRewarded &&
          other.moneyIn == this.moneyIn &&
          other.moneyOut == this.moneyOut &&
          other.balance == this.balance &&
          other.goldBalance == this.goldBalance &&
          other.level == this.level &&
          other.createdTime == this.createdTime &&
          other.lastActivity == this.lastActivity &&
          other.sessions == this.sessions);
}

class UsersInformationCompanion extends UpdateCompanion<UsersInformationData> {
  final Value<String> playerId;
  final Value<String> countryCode;
  final Value<int> adMobInterstitials;
  final Value<int> adMobRewarded;
  final Value<int> adUnityInterstitials;
  final Value<int> adUnityRewarded;
  final Value<int> moneyIn;
  final Value<int> moneyOut;
  final Value<int> balance;
  final Value<int> goldBalance;
  final Value<int> level;
  final Value<DateTime> createdTime;
  final Value<DateTime> lastActivity;
  final Value<int> sessions;
  final Value<int> rowid;
  const UsersInformationCompanion({
    this.playerId = const Value.absent(),
    this.countryCode = const Value.absent(),
    this.adMobInterstitials = const Value.absent(),
    this.adMobRewarded = const Value.absent(),
    this.adUnityInterstitials = const Value.absent(),
    this.adUnityRewarded = const Value.absent(),
    this.moneyIn = const Value.absent(),
    this.moneyOut = const Value.absent(),
    this.balance = const Value.absent(),
    this.goldBalance = const Value.absent(),
    this.level = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.lastActivity = const Value.absent(),
    this.sessions = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersInformationCompanion.insert({
    required String playerId,
    required String countryCode,
    this.adMobInterstitials = const Value.absent(),
    this.adMobRewarded = const Value.absent(),
    this.adUnityInterstitials = const Value.absent(),
    this.adUnityRewarded = const Value.absent(),
    this.moneyIn = const Value.absent(),
    this.moneyOut = const Value.absent(),
    this.balance = const Value.absent(),
    this.goldBalance = const Value.absent(),
    this.level = const Value.absent(),
    required DateTime createdTime,
    required DateTime lastActivity,
    this.sessions = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : playerId = Value(playerId),
        countryCode = Value(countryCode),
        createdTime = Value(createdTime),
        lastActivity = Value(lastActivity);
  static Insertable<UsersInformationData> custom({
    Expression<String>? playerId,
    Expression<String>? countryCode,
    Expression<int>? adMobInterstitials,
    Expression<int>? adMobRewarded,
    Expression<int>? adUnityInterstitials,
    Expression<int>? adUnityRewarded,
    Expression<int>? moneyIn,
    Expression<int>? moneyOut,
    Expression<int>? balance,
    Expression<int>? goldBalance,
    Expression<int>? level,
    Expression<DateTime>? createdTime,
    Expression<DateTime>? lastActivity,
    Expression<int>? sessions,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (playerId != null) 'id': playerId,
      if (countryCode != null) 'country': countryCode,
      if (adMobInterstitials != null) 'adMobInt': adMobInterstitials,
      if (adMobRewarded != null) 'adMobRew': adMobRewarded,
      if (adUnityInterstitials != null) 'adUnityInt': adUnityInterstitials,
      if (adUnityRewarded != null) 'adUnityRew': adUnityRewarded,
      if (moneyIn != null) 'money_in': moneyIn,
      if (moneyOut != null) 'money_out': moneyOut,
      if (balance != null) 'balance': balance,
      if (goldBalance != null) 'gold_balance': goldBalance,
      if (level != null) 'level': level,
      if (createdTime != null) 'created_time': createdTime,
      if (lastActivity != null) 'last_activity': lastActivity,
      if (sessions != null) 'sessions': sessions,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersInformationCompanion copyWith(
      {Value<String>? playerId,
      Value<String>? countryCode,
      Value<int>? adMobInterstitials,
      Value<int>? adMobRewarded,
      Value<int>? adUnityInterstitials,
      Value<int>? adUnityRewarded,
      Value<int>? moneyIn,
      Value<int>? moneyOut,
      Value<int>? balance,
      Value<int>? goldBalance,
      Value<int>? level,
      Value<DateTime>? createdTime,
      Value<DateTime>? lastActivity,
      Value<int>? sessions,
      Value<int>? rowid}) {
    return UsersInformationCompanion(
      playerId: playerId ?? this.playerId,
      countryCode: countryCode ?? this.countryCode,
      adMobInterstitials: adMobInterstitials ?? this.adMobInterstitials,
      adMobRewarded: adMobRewarded ?? this.adMobRewarded,
      adUnityInterstitials: adUnityInterstitials ?? this.adUnityInterstitials,
      adUnityRewarded: adUnityRewarded ?? this.adUnityRewarded,
      moneyIn: moneyIn ?? this.moneyIn,
      moneyOut: moneyOut ?? this.moneyOut,
      balance: balance ?? this.balance,
      goldBalance: goldBalance ?? this.goldBalance,
      level: level ?? this.level,
      createdTime: createdTime ?? this.createdTime,
      lastActivity: lastActivity ?? this.lastActivity,
      sessions: sessions ?? this.sessions,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (playerId.present) {
      map['id'] = Variable<String>(playerId.value);
    }
    if (countryCode.present) {
      map['country'] = Variable<String>(countryCode.value);
    }
    if (adMobInterstitials.present) {
      map['adMobInt'] = Variable<int>(adMobInterstitials.value);
    }
    if (adMobRewarded.present) {
      map['adMobRew'] = Variable<int>(adMobRewarded.value);
    }
    if (adUnityInterstitials.present) {
      map['adUnityInt'] = Variable<int>(adUnityInterstitials.value);
    }
    if (adUnityRewarded.present) {
      map['adUnityRew'] = Variable<int>(adUnityRewarded.value);
    }
    if (moneyIn.present) {
      map['money_in'] = Variable<int>(moneyIn.value);
    }
    if (moneyOut.present) {
      map['money_out'] = Variable<int>(moneyOut.value);
    }
    if (balance.present) {
      map['balance'] = Variable<int>(balance.value);
    }
    if (goldBalance.present) {
      map['gold_balance'] = Variable<int>(goldBalance.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<DateTime>(createdTime.value);
    }
    if (lastActivity.present) {
      map['last_activity'] = Variable<DateTime>(lastActivity.value);
    }
    if (sessions.present) {
      map['sessions'] = Variable<int>(sessions.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersInformationCompanion(')
          ..write('playerId: $playerId, ')
          ..write('countryCode: $countryCode, ')
          ..write('adMobInterstitials: $adMobInterstitials, ')
          ..write('adMobRewarded: $adMobRewarded, ')
          ..write('adUnityInterstitials: $adUnityInterstitials, ')
          ..write('adUnityRewarded: $adUnityRewarded, ')
          ..write('moneyIn: $moneyIn, ')
          ..write('moneyOut: $moneyOut, ')
          ..write('balance: $balance, ')
          ..write('goldBalance: $goldBalance, ')
          ..write('level: $level, ')
          ..write('createdTime: $createdTime, ')
          ..write('lastActivity: $lastActivity, ')
          ..write('sessions: $sessions, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ErrorLogsTable extends ErrorLogs
    with TableInfo<$ErrorLogsTable, ErrorLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ErrorLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _hashMeta = const VerificationMeta('hash');
  @override
  late final GeneratedColumn<int> hash = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
      'time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _playerIdMeta =
      const VerificationMeta('playerId');
  @override
  late final GeneratedColumn<String> playerId = GeneratedColumn<String>(
      'player_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES users_information (id)'));
  @override
  List<GeneratedColumn> get $columns => [hash, time, description, playerId];
  @override
  String get aliasedName => _alias ?? 'error_logs';
  @override
  String get actualTableName => 'error_logs';
  @override
  VerificationContext validateIntegrity(Insertable<ErrorLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(
          _hashMeta, hash.isAcceptableOrUnknown(data['id']!, _hashMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('player_id')) {
      context.handle(_playerIdMeta,
          playerId.isAcceptableOrUnknown(data['player_id']!, _playerIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {hash};
  @override
  ErrorLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ErrorLog(
      hash: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      playerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}player_id']),
    );
  }

  @override
  $ErrorLogsTable createAlias(String alias) {
    return $ErrorLogsTable(attachedDatabase, alias);
  }
}

class ErrorLog extends DataClass implements Insertable<ErrorLog> {
  final int hash;
  final String time;
  final String description;
  final String? playerId;
  const ErrorLog(
      {required this.hash,
      required this.time,
      required this.description,
      this.playerId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(hash);
    map['time'] = Variable<String>(time);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || playerId != null) {
      map['player_id'] = Variable<String>(playerId);
    }
    return map;
  }

  ErrorLogsCompanion toCompanion(bool nullToAbsent) {
    return ErrorLogsCompanion(
      hash: Value(hash),
      time: Value(time),
      description: Value(description),
      playerId: playerId == null && nullToAbsent
          ? const Value.absent()
          : Value(playerId),
    );
  }

  factory ErrorLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ErrorLog(
      hash: serializer.fromJson<int>(json['hash']),
      time: serializer.fromJson<String>(json['time']),
      description: serializer.fromJson<String>(json['description']),
      playerId: serializer.fromJson<String?>(json['playerId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'hash': serializer.toJson<int>(hash),
      'time': serializer.toJson<String>(time),
      'description': serializer.toJson<String>(description),
      'playerId': serializer.toJson<String?>(playerId),
    };
  }

  ErrorLog copyWith(
          {int? hash,
          String? time,
          String? description,
          Value<String?> playerId = const Value.absent()}) =>
      ErrorLog(
        hash: hash ?? this.hash,
        time: time ?? this.time,
        description: description ?? this.description,
        playerId: playerId.present ? playerId.value : this.playerId,
      );
  @override
  String toString() {
    return (StringBuffer('ErrorLog(')
          ..write('hash: $hash, ')
          ..write('time: $time, ')
          ..write('description: $description, ')
          ..write('playerId: $playerId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(hash, time, description, playerId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ErrorLog &&
          other.hash == this.hash &&
          other.time == this.time &&
          other.description == this.description &&
          other.playerId == this.playerId);
}

class ErrorLogsCompanion extends UpdateCompanion<ErrorLog> {
  final Value<int> hash;
  final Value<String> time;
  final Value<String> description;
  final Value<String?> playerId;
  const ErrorLogsCompanion({
    this.hash = const Value.absent(),
    this.time = const Value.absent(),
    this.description = const Value.absent(),
    this.playerId = const Value.absent(),
  });
  ErrorLogsCompanion.insert({
    this.hash = const Value.absent(),
    required String time,
    required String description,
    this.playerId = const Value.absent(),
  })  : time = Value(time),
        description = Value(description);
  static Insertable<ErrorLog> custom({
    Expression<int>? hash,
    Expression<String>? time,
    Expression<String>? description,
    Expression<String>? playerId,
  }) {
    return RawValuesInsertable({
      if (hash != null) 'id': hash,
      if (time != null) 'time': time,
      if (description != null) 'description': description,
      if (playerId != null) 'player_id': playerId,
    });
  }

  ErrorLogsCompanion copyWith(
      {Value<int>? hash,
      Value<String>? time,
      Value<String>? description,
      Value<String?>? playerId}) {
    return ErrorLogsCompanion(
      hash: hash ?? this.hash,
      time: time ?? this.time,
      description: description ?? this.description,
      playerId: playerId ?? this.playerId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (hash.present) {
      map['id'] = Variable<int>(hash.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (playerId.present) {
      map['player_id'] = Variable<String>(playerId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ErrorLogsCompanion(')
          ..write('hash: $hash, ')
          ..write('time: $time, ')
          ..write('description: $description, ')
          ..write('playerId: $playerId')
          ..write(')'))
        .toString();
  }
}

class $GameStatisticsTable extends GameStatistics
    with TableInfo<$GameStatisticsTable, GameStatistic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GameStatisticsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
      'time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _anteMeta = const VerificationMeta('ante');
  @override
  late final GeneratedColumn<int> ante = GeneratedColumn<int>(
      'ante', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _betMeta = const VerificationMeta('bet');
  @override
  late final GeneratedColumn<int> bet = GeneratedColumn<int>(
      'bet', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _winMeta = const VerificationMeta('win');
  @override
  late final GeneratedColumn<int> win = GeneratedColumn<int>(
      'win', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _gameResultMeta =
      const VerificationMeta('gameResult');
  @override
  late final GeneratedColumnWithTypeConverter<GameResults, String> gameResult =
      GeneratedColumn<String>('game_result', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<GameResults>(
              $GameStatisticsTable.$convertergameResult);
  static const VerificationMeta _dealerHandMeta =
      const VerificationMeta('dealerHand');
  @override
  late final GeneratedColumnWithTypeConverter<HandDescriptionModel?, String>
      dealerHand = GeneratedColumn<String>('dealer_hand', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<HandDescriptionModel?>(
              $GameStatisticsTable.$converterdealerHandn);
  static const VerificationMeta _playerHandMeta =
      const VerificationMeta('playerHand');
  @override
  late final GeneratedColumnWithTypeConverter<HandDescriptionModel?, String>
      playerHand = GeneratedColumn<String>('player_hand', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<HandDescriptionModel?>(
              $GameStatisticsTable.$converterplayerHandn);
  static const VerificationMeta _playerUnchangedHandMeta =
      const VerificationMeta('playerUnchangedHand');
  @override
  late final GeneratedColumnWithTypeConverter<HandDescriptionModel?, String>
      playerUnchangedHand = GeneratedColumn<String>(
              'player_unchanged_hand', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<HandDescriptionModel?>(
              $GameStatisticsTable.$converterplayerUnchangedHandn);
  static const VerificationMeta _playerIdMeta =
      const VerificationMeta('playerId');
  @override
  late final GeneratedColumn<String> playerId = GeneratedColumn<String>(
      'player_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES users_information (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        time,
        ante,
        bet,
        win,
        gameResult,
        dealerHand,
        playerHand,
        playerUnchangedHand,
        playerId
      ];
  @override
  String get aliasedName => _alias ?? 'game_statistics';
  @override
  String get actualTableName => 'game_statistics';
  @override
  VerificationContext validateIntegrity(Insertable<GameStatistic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('ante')) {
      context.handle(
          _anteMeta, ante.isAcceptableOrUnknown(data['ante']!, _anteMeta));
    } else if (isInserting) {
      context.missing(_anteMeta);
    }
    if (data.containsKey('bet')) {
      context.handle(
          _betMeta, bet.isAcceptableOrUnknown(data['bet']!, _betMeta));
    } else if (isInserting) {
      context.missing(_betMeta);
    }
    if (data.containsKey('win')) {
      context.handle(
          _winMeta, win.isAcceptableOrUnknown(data['win']!, _winMeta));
    } else if (isInserting) {
      context.missing(_winMeta);
    }
    context.handle(_gameResultMeta, const VerificationResult.success());
    context.handle(_dealerHandMeta, const VerificationResult.success());
    context.handle(_playerHandMeta, const VerificationResult.success());
    context.handle(
        _playerUnchangedHandMeta, const VerificationResult.success());
    if (data.containsKey('player_id')) {
      context.handle(_playerIdMeta,
          playerId.isAcceptableOrUnknown(data['player_id']!, _playerIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GameStatistic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GameStatistic(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time'])!,
      ante: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ante'])!,
      bet: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}bet'])!,
      win: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}win'])!,
      gameResult: $GameStatisticsTable.$convertergameResult.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}game_result'])!),
      dealerHand: $GameStatisticsTable.$converterdealerHandn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}dealer_hand'])),
      playerHand: $GameStatisticsTable.$converterplayerHandn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}player_hand'])),
      playerUnchangedHand: $GameStatisticsTable.$converterplayerUnchangedHandn
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}player_unchanged_hand'])),
      playerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}player_id']),
    );
  }

  @override
  $GameStatisticsTable createAlias(String alias) {
    return $GameStatisticsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<GameResults, String, String> $convertergameResult =
      const EnumNameConverter<GameResults>(GameResults.values);
  static TypeConverter<HandDescriptionModel, String> $converterdealerHand =
      const HandDescriptionConverter();
  static TypeConverter<HandDescriptionModel?, String?> $converterdealerHandn =
      NullAwareTypeConverter.wrap($converterdealerHand);
  static TypeConverter<HandDescriptionModel, String> $converterplayerHand =
      const HandDescriptionConverter();
  static TypeConverter<HandDescriptionModel?, String?> $converterplayerHandn =
      NullAwareTypeConverter.wrap($converterplayerHand);
  static TypeConverter<HandDescriptionModel, String>
      $converterplayerUnchangedHand = const HandDescriptionConverter();
  static TypeConverter<HandDescriptionModel?, String?>
      $converterplayerUnchangedHandn =
      NullAwareTypeConverter.wrap($converterplayerUnchangedHand);
}

class GameStatistic extends DataClass implements Insertable<GameStatistic> {
  final int id;
  final DateTime time;
  final int ante;
  final int bet;
  final int win;
  final GameResults gameResult;
  final HandDescriptionModel? dealerHand;
  final HandDescriptionModel? playerHand;
  final HandDescriptionModel? playerUnchangedHand;
  final String? playerId;
  const GameStatistic(
      {required this.id,
      required this.time,
      required this.ante,
      required this.bet,
      required this.win,
      required this.gameResult,
      this.dealerHand,
      this.playerHand,
      this.playerUnchangedHand,
      this.playerId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['time'] = Variable<DateTime>(time);
    map['ante'] = Variable<int>(ante);
    map['bet'] = Variable<int>(bet);
    map['win'] = Variable<int>(win);
    {
      final converter = $GameStatisticsTable.$convertergameResult;
      map['game_result'] = Variable<String>(converter.toSql(gameResult));
    }
    if (!nullToAbsent || dealerHand != null) {
      final converter = $GameStatisticsTable.$converterdealerHandn;
      map['dealer_hand'] = Variable<String>(converter.toSql(dealerHand));
    }
    if (!nullToAbsent || playerHand != null) {
      final converter = $GameStatisticsTable.$converterplayerHandn;
      map['player_hand'] = Variable<String>(converter.toSql(playerHand));
    }
    if (!nullToAbsent || playerUnchangedHand != null) {
      final converter = $GameStatisticsTable.$converterplayerUnchangedHandn;
      map['player_unchanged_hand'] =
          Variable<String>(converter.toSql(playerUnchangedHand));
    }
    if (!nullToAbsent || playerId != null) {
      map['player_id'] = Variable<String>(playerId);
    }
    return map;
  }

  GameStatisticsCompanion toCompanion(bool nullToAbsent) {
    return GameStatisticsCompanion(
      id: Value(id),
      time: Value(time),
      ante: Value(ante),
      bet: Value(bet),
      win: Value(win),
      gameResult: Value(gameResult),
      dealerHand: dealerHand == null && nullToAbsent
          ? const Value.absent()
          : Value(dealerHand),
      playerHand: playerHand == null && nullToAbsent
          ? const Value.absent()
          : Value(playerHand),
      playerUnchangedHand: playerUnchangedHand == null && nullToAbsent
          ? const Value.absent()
          : Value(playerUnchangedHand),
      playerId: playerId == null && nullToAbsent
          ? const Value.absent()
          : Value(playerId),
    );
  }

  factory GameStatistic.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GameStatistic(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<DateTime>(json['time']),
      ante: serializer.fromJson<int>(json['ante']),
      bet: serializer.fromJson<int>(json['bet']),
      win: serializer.fromJson<int>(json['win']),
      gameResult: $GameStatisticsTable.$convertergameResult
          .fromJson(serializer.fromJson<String>(json['gameResult'])),
      dealerHand:
          serializer.fromJson<HandDescriptionModel?>(json['dealerHand']),
      playerHand:
          serializer.fromJson<HandDescriptionModel?>(json['playerHand']),
      playerUnchangedHand: serializer
          .fromJson<HandDescriptionModel?>(json['playerUnchangedHand']),
      playerId: serializer.fromJson<String?>(json['playerId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<DateTime>(time),
      'ante': serializer.toJson<int>(ante),
      'bet': serializer.toJson<int>(bet),
      'win': serializer.toJson<int>(win),
      'gameResult': serializer.toJson<String>(
          $GameStatisticsTable.$convertergameResult.toJson(gameResult)),
      'dealerHand': serializer.toJson<HandDescriptionModel?>(dealerHand),
      'playerHand': serializer.toJson<HandDescriptionModel?>(playerHand),
      'playerUnchangedHand':
          serializer.toJson<HandDescriptionModel?>(playerUnchangedHand),
      'playerId': serializer.toJson<String?>(playerId),
    };
  }

  GameStatistic copyWith(
          {int? id,
          DateTime? time,
          int? ante,
          int? bet,
          int? win,
          GameResults? gameResult,
          Value<HandDescriptionModel?> dealerHand = const Value.absent(),
          Value<HandDescriptionModel?> playerHand = const Value.absent(),
          Value<HandDescriptionModel?> playerUnchangedHand =
              const Value.absent(),
          Value<String?> playerId = const Value.absent()}) =>
      GameStatistic(
        id: id ?? this.id,
        time: time ?? this.time,
        ante: ante ?? this.ante,
        bet: bet ?? this.bet,
        win: win ?? this.win,
        gameResult: gameResult ?? this.gameResult,
        dealerHand: dealerHand.present ? dealerHand.value : this.dealerHand,
        playerHand: playerHand.present ? playerHand.value : this.playerHand,
        playerUnchangedHand: playerUnchangedHand.present
            ? playerUnchangedHand.value
            : this.playerUnchangedHand,
        playerId: playerId.present ? playerId.value : this.playerId,
      );
  @override
  String toString() {
    return (StringBuffer('GameStatistic(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('ante: $ante, ')
          ..write('bet: $bet, ')
          ..write('win: $win, ')
          ..write('gameResult: $gameResult, ')
          ..write('dealerHand: $dealerHand, ')
          ..write('playerHand: $playerHand, ')
          ..write('playerUnchangedHand: $playerUnchangedHand, ')
          ..write('playerId: $playerId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, time, ante, bet, win, gameResult,
      dealerHand, playerHand, playerUnchangedHand, playerId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GameStatistic &&
          other.id == this.id &&
          other.time == this.time &&
          other.ante == this.ante &&
          other.bet == this.bet &&
          other.win == this.win &&
          other.gameResult == this.gameResult &&
          other.dealerHand == this.dealerHand &&
          other.playerHand == this.playerHand &&
          other.playerUnchangedHand == this.playerUnchangedHand &&
          other.playerId == this.playerId);
}

class GameStatisticsCompanion extends UpdateCompanion<GameStatistic> {
  final Value<int> id;
  final Value<DateTime> time;
  final Value<int> ante;
  final Value<int> bet;
  final Value<int> win;
  final Value<GameResults> gameResult;
  final Value<HandDescriptionModel?> dealerHand;
  final Value<HandDescriptionModel?> playerHand;
  final Value<HandDescriptionModel?> playerUnchangedHand;
  final Value<String?> playerId;
  const GameStatisticsCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.ante = const Value.absent(),
    this.bet = const Value.absent(),
    this.win = const Value.absent(),
    this.gameResult = const Value.absent(),
    this.dealerHand = const Value.absent(),
    this.playerHand = const Value.absent(),
    this.playerUnchangedHand = const Value.absent(),
    this.playerId = const Value.absent(),
  });
  GameStatisticsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime time,
    required int ante,
    required int bet,
    required int win,
    required GameResults gameResult,
    this.dealerHand = const Value.absent(),
    this.playerHand = const Value.absent(),
    this.playerUnchangedHand = const Value.absent(),
    this.playerId = const Value.absent(),
  })  : time = Value(time),
        ante = Value(ante),
        bet = Value(bet),
        win = Value(win),
        gameResult = Value(gameResult);
  static Insertable<GameStatistic> custom({
    Expression<int>? id,
    Expression<DateTime>? time,
    Expression<int>? ante,
    Expression<int>? bet,
    Expression<int>? win,
    Expression<String>? gameResult,
    Expression<String>? dealerHand,
    Expression<String>? playerHand,
    Expression<String>? playerUnchangedHand,
    Expression<String>? playerId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (ante != null) 'ante': ante,
      if (bet != null) 'bet': bet,
      if (win != null) 'win': win,
      if (gameResult != null) 'game_result': gameResult,
      if (dealerHand != null) 'dealer_hand': dealerHand,
      if (playerHand != null) 'player_hand': playerHand,
      if (playerUnchangedHand != null)
        'player_unchanged_hand': playerUnchangedHand,
      if (playerId != null) 'player_id': playerId,
    });
  }

  GameStatisticsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? time,
      Value<int>? ante,
      Value<int>? bet,
      Value<int>? win,
      Value<GameResults>? gameResult,
      Value<HandDescriptionModel?>? dealerHand,
      Value<HandDescriptionModel?>? playerHand,
      Value<HandDescriptionModel?>? playerUnchangedHand,
      Value<String?>? playerId}) {
    return GameStatisticsCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      ante: ante ?? this.ante,
      bet: bet ?? this.bet,
      win: win ?? this.win,
      gameResult: gameResult ?? this.gameResult,
      dealerHand: dealerHand ?? this.dealerHand,
      playerHand: playerHand ?? this.playerHand,
      playerUnchangedHand: playerUnchangedHand ?? this.playerUnchangedHand,
      playerId: playerId ?? this.playerId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (ante.present) {
      map['ante'] = Variable<int>(ante.value);
    }
    if (bet.present) {
      map['bet'] = Variable<int>(bet.value);
    }
    if (win.present) {
      map['win'] = Variable<int>(win.value);
    }
    if (gameResult.present) {
      final converter = $GameStatisticsTable.$convertergameResult;
      map['game_result'] = Variable<String>(converter.toSql(gameResult.value));
    }
    if (dealerHand.present) {
      final converter = $GameStatisticsTable.$converterdealerHandn;
      map['dealer_hand'] = Variable<String>(converter.toSql(dealerHand.value));
    }
    if (playerHand.present) {
      final converter = $GameStatisticsTable.$converterplayerHandn;
      map['player_hand'] = Variable<String>(converter.toSql(playerHand.value));
    }
    if (playerUnchangedHand.present) {
      final converter = $GameStatisticsTable.$converterplayerUnchangedHandn;
      map['player_unchanged_hand'] =
          Variable<String>(converter.toSql(playerUnchangedHand.value));
    }
    if (playerId.present) {
      map['player_id'] = Variable<String>(playerId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GameStatisticsCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('ante: $ante, ')
          ..write('bet: $bet, ')
          ..write('win: $win, ')
          ..write('gameResult: $gameResult, ')
          ..write('dealerHand: $dealerHand, ')
          ..write('playerHand: $playerHand, ')
          ..write('playerUnchangedHand: $playerUnchangedHand, ')
          ..write('playerId: $playerId')
          ..write(')'))
        .toString();
  }
}

abstract class _$UsersDatabase extends GeneratedDatabase {
  _$UsersDatabase(QueryExecutor e) : super(e);
  late final $UsersInformationTable usersInformation =
      $UsersInformationTable(this);
  late final $ErrorLogsTable errorLogs = $ErrorLogsTable(this);
  late final $GameStatisticsTable gameStatistics = $GameStatisticsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [usersInformation, errorLogs, gameStatistics];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
