module.exports = function(grunt){

	grunt.initConfig({

		pkg: grunt.file.readJSON('package.json'),


		critical: 
		{
		    dist: 
			{
			    options: {
			      base: './',
			      dimensions: [{
			        width: 821,
			        height: 900
			       }/*,
			       {
			        width: 500,
			        height: 900
			      }*/]
			    },

        		files: [
				      {src: ['http://localhost:3000/'], dest: 'css/critical/critical-821.css'},
				      //{src: ['blog.html'], dest: 'dist/blog.html'}

				      ],
        	}
		},
		pug: 
			{
			  compile: {
			    options: {
			      data: {
			        debug: false
			      }
			    },
			    
			    files: {
			      '../footer.php':['template/footer.pug'],
			      '../front-page.php':['template/front-page.pug'],
			      '../header.php':['template/header.pug'],
			      '../full-width.php':['template/full-width.pug'],
			      '../right-sidebar.php':['template/right-sidebar.pug'],
			      '../article-template.php':['template/article-template.pug'],
			      '../category.php':['template/category.pug'],
			      '../single-car.php':['template/single-car.pug'],
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
				      '../style.css': 'css/custom.less',
				      'css/pages/about/about.css': 'css/pages/about/about.less',
				      'css/pages/right-sidebar/right.css': 'css/pages/right-sidebar/right.less',
				      'css/pages/category/category.css': 'css/pages/category/category.less',
				      'css/pages/single-car/single-car.css': 'css/pages/single-car/single-car.less',
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
					files:['css/*.less', 'css/pages/*/*.less'],
					tasks:['less'],
					options: {
				      livereload: true,
				    }
				},
				scripts:
				{
					files:['template/*.pug', 'template/php/*.php'],
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
                        '../style.css',
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
	grunt.loadNpmTasks('grunt-critical');
	grunt.loadNpmTasks('grunt-browser-sync');

	grunt.registerTask('default',['pug','less','browserSync','watch'])


}; //end wrap