// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'transaction.dart';

class TransactionMapper extends ClassMapperBase<Transaction> {
  TransactionMapper._();

  static TransactionMapper? _instance;
  static TransactionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TransactionMapper._());
      MapperContainer.globals.useAll([DecimalMapper()]);
      PaymentMapper.ensureInitialized();
      DebtMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Transaction';

  static Decimal _$amount(Transaction v) => v.amount;
  static const Field<Transaction, Decimal> _f$amount = Field(
    'amount',
    _$amount,
  );
  static DateTime _$date(Transaction v) => v.date;
  static const Field<Transaction, DateTime> _f$date = Field('date', _$date);
  static String _$id(Transaction v) => v.id;
  static const Field<Transaction, String> _f$id = Field('id', _$id);
  static String _$comments(Transaction v) => v.comments;
  static const Field<Transaction, String> _f$comments = Field(
    'comments',
    _$comments,
  );

  @override
  final MappableFields<Transaction> fields = const {
    #amount: _f$amount,
    #date: _f$date,
    #id: _f$id,
    #comments: _f$comments,
  };

  static Transaction _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'Transaction',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Transaction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Transaction>(map);
  }

  static Transaction fromJson(String json) {
    return ensureInitialized().decodeJson<Transaction>(json);
  }
}

mixin TransactionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  TransactionCopyWith<Transaction, Transaction, Transaction> get copyWith;
}

abstract class TransactionCopyWith<$R, $In extends Transaction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Decimal? amount, DateTime? date, String? id, String? comments});
  TransactionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class PaymentMapper extends SubClassMapperBase<Payment> {
  PaymentMapper._();

  static PaymentMapper? _instance;
  static PaymentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMapper._());
      TransactionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Payment';

  static Decimal _$amount(Payment v) => v.amount;
  static const Field<Payment, Decimal> _f$amount = Field('amount', _$amount);
  static DateTime _$date(Payment v) => v.date;
  static const Field<Payment, DateTime> _f$date = Field('date', _$date);
  static String _$id(Payment v) => v.id;
  static const Field<Payment, String> _f$id = Field('id', _$id);
  static String _$comments(Payment v) => v.comments;
  static const Field<Payment, String> _f$comments = Field(
    'comments',
    _$comments,
  );

  @override
  final MappableFields<Payment> fields = const {
    #amount: _f$amount,
    #date: _f$date,
    #id: _f$id,
    #comments: _f$comments,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'payment';
  @override
  late final ClassMapperBase superMapper =
      TransactionMapper.ensureInitialized();

  static Payment _instantiate(DecodingData data) {
    return Payment(
      amount: data.dec(_f$amount),
      date: data.dec(_f$date),
      id: data.dec(_f$id),
      comments: data.dec(_f$comments),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Payment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Payment>(map);
  }

  static Payment fromJson(String json) {
    return ensureInitialized().decodeJson<Payment>(json);
  }
}

mixin PaymentMappable {
  String toJson() {
    return PaymentMapper.ensureInitialized().encodeJson<Payment>(
      this as Payment,
    );
  }

  Map<String, dynamic> toMap() {
    return PaymentMapper.ensureInitialized().encodeMap<Payment>(
      this as Payment,
    );
  }

  PaymentCopyWith<Payment, Payment, Payment> get copyWith =>
      _PaymentCopyWithImpl<Payment, Payment>(
        this as Payment,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PaymentMapper.ensureInitialized().stringifyValue(this as Payment);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMapper.ensureInitialized().equalsValue(
      this as Payment,
      other,
    );
  }

  @override
  int get hashCode {
    return PaymentMapper.ensureInitialized().hashValue(this as Payment);
  }
}

extension PaymentValueCopy<$R, $Out> on ObjectCopyWith<$R, Payment, $Out> {
  PaymentCopyWith<$R, Payment, $Out> get $asPayment =>
      $base.as((v, t, t2) => _PaymentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaymentCopyWith<$R, $In extends Payment, $Out>
    implements TransactionCopyWith<$R, $In, $Out> {
  @override
  $R call({Decimal? amount, DateTime? date, String? id, String? comments});
  PaymentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaymentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Payment, $Out>
    implements PaymentCopyWith<$R, Payment, $Out> {
  _PaymentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Payment> $mapper =
      PaymentMapper.ensureInitialized();
  @override
  $R call({Decimal? amount, DateTime? date, String? id, String? comments}) =>
      $apply(
        FieldCopyWithData({
          if (amount != null) #amount: amount,
          if (date != null) #date: date,
          if (id != null) #id: id,
          if (comments != null) #comments: comments,
        }),
      );
  @override
  Payment $make(CopyWithData data) => Payment(
    amount: data.get(#amount, or: $value.amount),
    date: data.get(#date, or: $value.date),
    id: data.get(#id, or: $value.id),
    comments: data.get(#comments, or: $value.comments),
  );

  @override
  PaymentCopyWith<$R2, Payment, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PaymentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DebtMapper extends SubClassMapperBase<Debt> {
  DebtMapper._();

  static DebtMapper? _instance;
  static DebtMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DebtMapper._());
      TransactionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Debt';

  static Decimal _$amount(Debt v) => v.amount;
  static const Field<Debt, Decimal> _f$amount = Field('amount', _$amount);
  static DateTime _$date(Debt v) => v.date;
  static const Field<Debt, DateTime> _f$date = Field('date', _$date);
  static String _$id(Debt v) => v.id;
  static const Field<Debt, String> _f$id = Field('id', _$id);
  static String _$comments(Debt v) => v.comments;
  static const Field<Debt, String> _f$comments = Field('comments', _$comments);

  @override
  final MappableFields<Debt> fields = const {
    #amount: _f$amount,
    #date: _f$date,
    #id: _f$id,
    #comments: _f$comments,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'debt';
  @override
  late final ClassMapperBase superMapper =
      TransactionMapper.ensureInitialized();

  static Debt _instantiate(DecodingData data) {
    return Debt(
      amount: data.dec(_f$amount),
      date: data.dec(_f$date),
      id: data.dec(_f$id),
      comments: data.dec(_f$comments),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Debt fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Debt>(map);
  }

  static Debt fromJson(String json) {
    return ensureInitialized().decodeJson<Debt>(json);
  }
}

mixin DebtMappable {
  String toJson() {
    return DebtMapper.ensureInitialized().encodeJson<Debt>(this as Debt);
  }

  Map<String, dynamic> toMap() {
    return DebtMapper.ensureInitialized().encodeMap<Debt>(this as Debt);
  }

  DebtCopyWith<Debt, Debt, Debt> get copyWith =>
      _DebtCopyWithImpl<Debt, Debt>(this as Debt, $identity, $identity);
  @override
  String toString() {
    return DebtMapper.ensureInitialized().stringifyValue(this as Debt);
  }

  @override
  bool operator ==(Object other) {
    return DebtMapper.ensureInitialized().equalsValue(this as Debt, other);
  }

  @override
  int get hashCode {
    return DebtMapper.ensureInitialized().hashValue(this as Debt);
  }
}

extension DebtValueCopy<$R, $Out> on ObjectCopyWith<$R, Debt, $Out> {
  DebtCopyWith<$R, Debt, $Out> get $asDebt =>
      $base.as((v, t, t2) => _DebtCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DebtCopyWith<$R, $In extends Debt, $Out>
    implements TransactionCopyWith<$R, $In, $Out> {
  @override
  $R call({Decimal? amount, DateTime? date, String? id, String? comments});
  DebtCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DebtCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Debt, $Out>
    implements DebtCopyWith<$R, Debt, $Out> {
  _DebtCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Debt> $mapper = DebtMapper.ensureInitialized();
  @override
  $R call({Decimal? amount, DateTime? date, String? id, String? comments}) =>
      $apply(
        FieldCopyWithData({
          if (amount != null) #amount: amount,
          if (date != null) #date: date,
          if (id != null) #id: id,
          if (comments != null) #comments: comments,
        }),
      );
  @override
  Debt $make(CopyWithData data) => Debt(
    amount: data.get(#amount, or: $value.amount),
    date: data.get(#date, or: $value.date),
    id: data.get(#id, or: $value.id),
    comments: data.get(#comments, or: $value.comments),
  );

  @override
  DebtCopyWith<$R2, Debt, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DebtCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

