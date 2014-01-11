class BlogPostsController < ApplicationController
	def index
		@blog_posts = BlogPost.all
	end

	def show
		@blog_post = BlogPost.find(params[:id])
		@comment = Comment.new
	end	

	def new
		@blog_post = BlogPost.new
	end	

	def create
		@blog_post = BlogPost.create(blog_post_params) 
		redirect_to blog_posts_path
	end	

	def edit
		@blog_post = BlogPost.find(params[:id])
	end
	
	def update
		@blog_post = BlogPost.find(params[:id])
		@blog_post.update_attributes(blog_post_params)
		redirect_to blog_posts_path
	end

	def destroy
		@blog_post = BlogPost.find(params[:id])
		@blog_post.destroy
		redirect_to root_path
	end	


private
	def blog_post_params
		params.require(:blog_post).permit(:title, :post_body)
	end

end
	
