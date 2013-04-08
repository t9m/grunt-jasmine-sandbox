describe 'domManipulation', ->
    jasmine.getFixtures().fixturesPath = 'spec/fixtures'
    loadFixtures('test.html')
    it 'should insert appointed text to element of an appointed index', ->
        insertText('hoge', 1)
        expect($(test3Elements).eq(1).text()).toEqual('hoge')
