describe 'domManipulation', ->
    jasmine.getFixtures().fixturesPath = 'spec/fixtures'
    beforeEach ->
        loadFixtures('test.html')

    it 'should insert appointed text to element of an appointed index', ->
        insertText('hoge', 1)
        expect($('.test3').eq(1).text()).toEqual('hoge')
        insertText(12345, 3)
        expect($('.test3').eq(3).text()).toEqual('12345')
        expect($('.test3').eq(0)).toBeEmpty()
