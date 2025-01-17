import 'package:cw_zano/model/balance.dart';

class Wi {
  final String address;
  final List<Balance> balances;
  final bool isAuditable;
  final bool isWatchOnly;
  final int minedTotal;
  final String path;
  final String viewSecKey;

  Wi(
      {required this.address,
      required this.balances,
      required this.isAuditable,
      required this.isWatchOnly,
      required this.minedTotal,
      required this.path,
      required this.viewSecKey});

  factory Wi.fromJson(Map<String, dynamic> json) => Wi(
        address: json['address'] as String,
        balances: json['balances'] == null ? [] : (json['balances'] as List<dynamic>)
            .map((e) => Balance.fromJson(e as Map<String, dynamic>))
            .toList(),
        isAuditable: json['is_auditable'] as bool,
        isWatchOnly: json['is_watch_only'] as bool,
        minedTotal: json['mined_total'] as int,
        path: json['path'] as String,
        viewSecKey: json['view_sec_key'] as String,
      );
}
