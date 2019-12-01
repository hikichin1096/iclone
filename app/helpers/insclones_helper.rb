module InsclonesHelper

  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      #確認画面を表示
      confirm_insclones_path
    elsif action_name == 'edit'
      #編集画面を表示
      insclone_path
    end
  end

end
