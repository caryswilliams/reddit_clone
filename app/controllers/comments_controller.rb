class CommentsController < ApplicationController
  
 
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  respond_to do |format|
    if @comment.save
      format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
      format.json { render :show, status: :created, location: @comment }
    else
      format.html { render :new }
      format.json { render json: @comment.errors, status: :unprocessable_entity }
    end
   end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end