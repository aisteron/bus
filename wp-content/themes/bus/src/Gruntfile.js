module.exports = function(grunt){

	grunt.initConfig({

		pkg: grunt.file.readJSON('package.json'),


		
		pug: 
			{
			  compile: {
			    options: {
			      data: {
			        debug: false
			      }
			    },
			    
			    files: {
			      '../footer.php':['template/footer.pug']
			    },
			    
			  }
			},

		less: 
			{

			  production: {
			    options: 
				    {
				      paths: ['src/css'],
				      plugins: 
				      	[
				        new (require('less-plugin-autoprefix'))({browsers: ["last 3 versions"]})
				        ,new (require('less-plugin-clean-css'))()
				        ],
				    },
			    files: 
				    {
				      '../style.css': 'css/custom.less'
				    }
			  }
			},

		/*concat: // подумать что объединять
			{
				dist:
					{
						src:['dev/css/custom.css'],
						dest:'dev/css/concat.css'
					}
  			},	*/

		watch:
			{
				css:
				{
					files:['src/css/*.less'],
					tasks:['less'],
					options: {
				      livereload: true,
				    }
				},
				scripts:
				{
					files:['src/template/*.pug'],
					tasks:['pug'],
					options: {
				      livereload: true,
				    }
					
				}
			},

		browserSync: 
			{
	            dev: {
	                bsFiles: {
	                    src : [
                        'src/css/*.css',
                        '../*.php'
                    ]
	                },
	                options: {
	                    watchTask: true,
	                    proxy: 'bus.local'
	                }
	            }
	        }	

	}); //end .initConfig

	grunt.loadNpmTasks('grunt-contrib-pug');
	grunt.loadNpmTasks('grunt-contrib-less');
	grunt.loadNpmTasks('grunt-contrib-watch');
	//grunt.loadNpmTasks('grunt-contrib-concat');

	grunt.loadNpmTasks('grunt-browser-sync');

	grunt.registerTask('default',['pug','less','watch', 'browserSync'])


}; //end wrap