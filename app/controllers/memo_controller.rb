class MemoController < ApplicationController
  def index
   @memos = Memo.all
  end

  def new
    @memos = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to memo_path
  end

  def edit
    @memo = Memo.find(params[:id])
    # byebug
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to memo_path
  end


  private
  def memo_params
    params.require(:memo).permit(:content)
  end
end
