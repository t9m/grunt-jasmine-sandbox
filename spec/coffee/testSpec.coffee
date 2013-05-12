describe 'test', ->
  it 'should return argument', ->
    expect(test(1)).toEqual(1)
    expect(test('hoge')).toEqual('hoge')
    expect(test(2)).not.toEqual(1)
    expect(test('foo')).not.toEqual('hoo')
