class InsclonesController < ApplicationController

  #インデックスアクション
  def index

    #テーブルから全ての投稿を取得
    @insclones = Insclone.all
  end

  #新規アクション
  def new
    @insclone = Insclone.new
  end

  #作成
  def create
    @insclone = Insclone.create(insclone_params)

    #新規画面に移動
    redirect_to new_insclone_path
  end

  #表示
  def show
    #指定idのパラメータ取得
    @insclone = Insclone.find(params[:id])
  end

  private

  #ストロングパラメータ
  def insclone_params
    params.require(:insclone).permit(:title, :content)
  end

end
