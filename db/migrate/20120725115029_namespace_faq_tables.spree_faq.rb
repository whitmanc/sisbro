# This migration comes from spree_faq (originally 20120721084535)
class NamespaceFaqTables < ActiveRecord::Migration
  def change
    rename_table :questions, :spree_questions
    rename_table :question_categories, :spree_question_categories
  end
end
