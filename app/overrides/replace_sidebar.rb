Deface::Override.new(:virtual_path => "spree/shared/sidebar", 
                     :name => "replace_sidebar", 
                     :replace_contents => "#sidebar",
                     :partial => "spree/shared/sidebar")
                     