{
  _
  should
} = require './_utils'
index = require '../'


describe 'camelize-http-headers', () ->
  it 'should work', () ->
    true.should.eql true


  describe '.fieldName', () ->
    origExceptions = undefined

    before () ->
      origExceptions = index._exceptions
      index._exceptions =
        'content-md5': 'Content-MD5'

    after () ->
      index._exceptions = origExceptions

    it 'should work', () ->
      index.fieldName('accept').should.eql 'Accept'
      index.fieldName('content-type').should.eql 'Content-Type'
      index.fieldName('Content-MD5').should.eql 'Content-MD5'
      index.fieldName('content-MD5').should.eql 'Content-MD5'
      index.fieldName('Content-md5').should.eql 'Content-MD5'
      index.fieldName('CoNtEnT-mD5').should.eql 'Content-MD5'
      index.fieldName('content-md5').should.eql 'Content-MD5'


  describe '._camelCase', () ->
    it 'should work', () ->
      index._camelCase('accept').should.eql 'Accept'
      index._camelCase('content-type').should.eql 'Content-Type'
      index._camelCase('Content-MD5').should.eql 'Content-Md5'
      index._camelCase('content-MD5').should.eql 'Content-Md5'
      index._camelCase('Content-md5').should.eql 'Content-Md5'
      index._camelCase('CoNtEnT-mD5').should.eql 'Content-Md5'
      index._camelCase('content-md5').should.eql 'Content-Md5'
