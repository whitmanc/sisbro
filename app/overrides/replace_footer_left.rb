Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "replace_footer_left", 
                     :replace_contents => "#footer-left",
                     :text => "<%= link_to 'Sisbro.com Home', 'http://sisbro.com' %>")
Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "replace_footer_right", 
                     :replace_contents => "#footer-right",
                     :partial => "spree/shared/footer_menu")
