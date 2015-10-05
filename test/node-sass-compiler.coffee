{expect} = require 'chai'

NodeSassCompiler = require '../src'

describe 'NodeSassCompiler', ->
  describe '#compile', ->
    it 'should compile for css', (done) ->
      compiler = new NodeSassCompiler
      params =
        data: '.test {\n  border-color: #fff; }\n'

      compiler.compile params, (err, out) ->
        expect(err).not.to.be.ok
        expect(out.data.toString()).to.equal ".test {\n  border-color: #fff; }\n"
        done()

    it 'should compile and compressed', (done) ->
      compiler = new NodeSassCompiler
        plugins:
          sass:
            outputStyle: 'compressed'
      params =
        data: '.test {\n  border-color: #fff; }\n'

      compiler.compile params, (err, out) ->
        expect(err).not.to.be.ok
        expect(out.data.toString()).to.equal(".test{border-color:#fff}\n")
        done()
