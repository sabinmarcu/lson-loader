lson = require "lson"

module.exports = (source) ->
    @cacheable?!
    @callback null, """(function(){
        module.exports = #{lson.stringify lson.parse source .replace /\\?[\"\']/g, "\""};
        return module.exports;
    })();"""
