module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		coffee:
			app:
				files:
					"javascripts/app.js": "javascripts/app.coffee"
				options:
					bare: true
		jade:
			index:
				files:
					"index.html": "jades/index.jade"
		stylus:
			style:
				files:
					"stylesheets/style.css": "stylesheets/style.styl"
		watch:
			files: ["javascripts/app.coffee", "jades/index.jade", "stylesheets/style.styl"]
			tasks: ["coffee", "jade", "stylus"]

	grunt.loadNpmTasks "grunt-contrib-coffee"
	grunt.loadNpmTasks "grunt-contrib-jade"
	grunt.loadNpmTasks "grunt-contrib-stylus"
	grunt.loadNpmTasks "grunt-contrib-watch"

	grunt.registerTask "default", ["coffee", "jade", "stylus"]