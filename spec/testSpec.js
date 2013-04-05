describe('test', function() {
  return it('should return argument', function() {
    expect(test(1)).toEqual(1);
    expect(test('hoge')).toEqual('hoge');
    return expect(test(2)).not.toEqual(1);
  });
});
