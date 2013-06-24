module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		coffee:
			app:
				files:
					"../../Dropbox/Public/jairodesign/javascripts/app.js": "javascripts/app.coffee"
				options:
					bare: true
		jade:
			index:
				files:
					"../../Dropbox/Public/jairodesign/index.html": "jades/index.jade"
		stylus:
			style:
				files:
					"../../Dropbox/Public/jairodesign/stylesheets/style.css": "stylesheets/style.styl"
		watch:
			files: ["javascripts/app.coffee", "jades/index.jade", "stylesheets/style.styl"]
			tasks: ["coffee", "jade", "stylus"]

	grunt.loadNpmTasks "grunt-contrib-coffee"
	grunt.loadNpmTasks "grunt-contrib-jade"
	grunt.loadNpmTasks "grunt-contrib-stylus"
	grunt.loadNpmTasks "grunt-contrib-watch"

	grunt.registerTask "default", ["coffee", "jade", "stylus"]