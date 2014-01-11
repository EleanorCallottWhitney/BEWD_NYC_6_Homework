class CommentsController < ApplicationController
	def create
		@blog_post = BlogPost.find(params[:blog_post_id])
		@comment = Comment.create(comment_params)
		@blog_post.comments << @comment 
		redirect_to blog_post_path @blog_post, notice: 'New comment!'
	end	

private 
	def comment_params
		params.require(:comment).permit(:content, :email, :blog_post_id)
	end	

end	