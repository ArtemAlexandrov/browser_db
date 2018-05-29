import WebDBObject from '../WebDBObject.coffee'

describe 'class WebDBObject', ->
  describe '#constructor', ->
    it 'generate new instanse of WebDBObject', -> expect((new WebDBObject()) instanceof WebDBObject).toBeTruthy()
    it 'store attributes', -> expect((new WebDBObject(foo: 'baz')).foo).toEqual('baz')

  describe 'extended classes', ->
    describe '#_beforeInit', ->
      it 'do something before object inited', ->
        beforeInitFunc = jest.fn()
        class Foo extends WebDBObject
          _beforeInit: beforeInitFunc
        a = new Foo()
        expect(beforeInitFunc).toHaveBeenCalled()
    describe '#_afterInit', ->
      it 'do something after object inited', ->
        beforeInitFunc = jest.fn()
        class Foo extends WebDBObject
          _afterInit: beforeInitFunc
        a = new Foo()
        expect(beforeInitFunc).toHaveBeenCalled()



