describe 'domManipulation', ->
    #loadFixtures('../fixtures/test.html')
    $('body').append(
        """
        <div id="test1">
            <div id="test2">"
                <div class="test3"></div>
                <div class="test3"></div>
                <div class="test3"></div>
                <div class="test3"></div>
            </div>
        </div>
        """
    )
    it 'should insert appointed text to element of an appointed index', ->
        insertText('hoge', 1)
        expect($(test3Elements).eq(1).text()).toEqual('hoge')
