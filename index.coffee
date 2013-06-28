exports = module.exports = (headers) ->
  result = {}
  for name, value of headers
    name = exports.fieldName name
    result[name] = value
  result


exports.fieldName = (name) ->
  name = name.toLowerCase()
  exports._exceptions[name] or exports._camelCase name


exports._exceptions =
  'content-md5': 'Content-MD5'
  'etag': 'ETag'
  'www-authenticate': 'WWW-Authenticate'


exports._camelCase = (str) ->
  str = str[0].toUpperCase() + str.substr(1).toLowerCase()
  str = str.replace /-([a-z])/g, (matches) -> matches.toUpperCase()
  str
