docpadConfig = {
	collections:
		posts: ->
			@getCollection("html").findAllLive({isPost:true},[timestamp:-1])

	templateData:
		getPreparedTitle: -> if @document.title then "#{@document.title}" else @site.title

	plugins:
    tags:
      extension: '.html'
      injectDocumentHelper: (doc) ->
        doc.setMeta {layout: 'tag'}
}

module.exports = docpadConfig
