class InsclonesController < ApplicationController

  #各メソッドが実行される前に、実行（共通処理)
  before_action :set_insclone, only:[:show, :edit, :update, :destroy]

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

    if params[:back]
      #確認画面で戻るを押下した場合、入力フォームを再描画します。
      render :new

    else
      if @insclone.save
        #登録に成功した場合、一覧画面に遷移し、投稿した旨のメッセージを表示
        redirect_to insclones_path, notice: "投稿しました。"
      else
        #登録に失敗した場合、入力フォームを再描画します。
        #create.htmlは存在しないので、new.htmlを呼び出す。
        render :new
      end
    end

  end

  #表示
  def show
  end

  #編集
  def edit
  end

  #更新
  def update
    if @insclone.update(insclone_params)
      #編集に成功した場合、一覧画面に遷移し、編集した旨のメッセージを表示
      redirect_to insclones_path, notice: "投稿編集完了"
    else
      #編集に失敗した場合、編集フォームを再描画します。
      render :edit
    end
  end

  #削除
  def destroy

    #削除実行
    @insclone.destroy

    #一覧画面に遷移し、削除した旨のメッセージを表示
    redirect_to insclones_path, notice: "投稿削除完了"

  end

  #確認
  def confirm
    @insclone = Insclone.new(insclone_params)

    #確認画面に移る前に、手動でバリデーションを発生させて、失敗した場合は投稿画面に戻る
    render :new if @insclone.invalid?
  end

  private

  #ストロングパラメータ
  def insclone_params
    params.require(:insclone).permit(:title, :content)
  end

  #共通処理
  def set_insclone
    @insclone = Insclone.find(params[:id])
  end

end
