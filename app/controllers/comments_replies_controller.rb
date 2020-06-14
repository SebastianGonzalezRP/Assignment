class CommentsRepliesController < ApplicationController
  before_action :set_comments_reply, only: [:show, :edit, :update, :destroy]

  # GET /comments_replies
  # GET /comments_replies.json
  def index
    @comments_replies = CommentsReply.all
  end

  # GET /comments_replies/1
  # GET /comments_replies/1.json
  def show
  end

  # GET /comments_replies/new
  def new
    @comments_reply = CommentsReply.new
  end

  # GET /comments_replies/1/edit
  def edit
  end

  # POST /comments_replies
  # POST /comments_replies.json
  def create
    @comments_reply = CommentsReply.new(comments_reply_params)

    respond_to do |format|
      if @comments_reply.save
        format.html { redirect_to @comments_reply, notice: 'Comments reply was successfully created.' }
        format.json { render :show, status: :created, location: @comments_reply }
      else
        format.html { render :new }
        format.json { render json: @comments_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments_replies/1
  # PATCH/PUT /comments_replies/1.json
  def update
    respond_to do |format|
      if @comments_reply.update(comments_reply_params)
        format.html { redirect_to @comments_reply, notice: 'Comments reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @comments_reply }
      else
        format.html { render :edit }
        format.json { render json: @comments_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments_replies/1
  # DELETE /comments_replies/1.json
  def destroy
    @comments_reply.destroy
    respond_to do |format|
      format.html { redirect_to comments_replies_url, notice: 'Comments reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comments_reply
      @comments_reply = CommentsReply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comments_reply_params
      params.fetch(:comments_reply, {})
    end
end
