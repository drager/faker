part of faker;

class Guid {

  const Guid();

  String guid() => random.fromPatternToHex(
      ['########-####-####-####-############']
  );
}
