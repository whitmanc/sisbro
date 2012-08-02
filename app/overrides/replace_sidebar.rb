Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "replace_sidebar", 
                     :replace_contents => "#sidebar",
                     :partial => "spree/shared/sidebar")
                     