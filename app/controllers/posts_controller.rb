class PostsController < ApplicationController
	#главная страница
	def index
		@post = Post.all
	end
	#добавление нового поста
	def new

	end
	def show
		@post = Post.find(params[:id])
	end
 	#создание нового поста
	def create
	#	render plain: params[:post].inspect
	@post = Post.new(post_params)

	@post.save
	redirect_to @post
	end
	def about

	end
	private def post_params
		params.require(:post).permit(:title,:body)
	end
end
