# This migration comes from spree_faq (originally 20120626162458)
class AddLocaleToQuestionCategories < ActiveRecord::Migration
  def self.up
    add_column :question_categories, :locale, :string
    # QuestionCategory.update_all :locale => Spree::Config[:default_locale] 
  end
 
  def self.down
    remove_column :question_categories, :locale
  end
end
