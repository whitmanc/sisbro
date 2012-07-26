Spree::AppConfiguration.class_eval do
  # Monkey patch for Spree Snippets
  preference :spree_snippets_raise_on_missing, :boolean, :default => true
end