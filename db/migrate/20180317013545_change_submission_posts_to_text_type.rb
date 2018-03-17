class ChangeSubmissionPostsToTextType < ActiveRecord::Migration[5.1]
  def change
     change_column :submissions, :post, :text
  end
end
