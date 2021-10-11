# Use Cloak to make boilerplate
{ mergeConfig, makeBoilerplate, isDev, isGenerating } = require '@bkwld/cloak'
boilerplate = makeBoilerplate
	siteName: 'vue-ssr-carousel demo'
	cms: '@nuxt/content'

# Nuxt config
module.exports = mergeConfig boilerplate,

	modules: [
		'@nuxt/content'
		'vue-unorphan/nuxt/module'
		'vue-balance-text/nuxt/module'
	]

	# Expect specially slug-ed towers to exist that will be loaded by error.vue
	generate: fallback: true

	# Add production internal URL
	anchorParser: internalUrls: [
		# /^https?:\/\/(www\.)?domain\.com/
	]
