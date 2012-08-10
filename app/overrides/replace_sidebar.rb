Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "replace_sidebar",
                     :replace_contents => "#sidebar",
                     :partial => "spree/shared/sidebar")

Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "insert_recently_viewed_after_sidebar",
                     :insert_bottom => "#sidebar",
                     :partial => "spree/shared/recently_viewed_products")


Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "insert_snippet_at_sidebar_top",
                     :insert_top => "#sidebar",
                     :text => "<div id='sidebar_top'><%= render_snippet 'sidebar_top' %></div><br /><br />")

Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "insert_snippet_at_sidebar_bottom",
                     :insert_top => "#sidebar",
                     :text => "<div id='sidebar_bottom'><%= render_snippet 'sidebar_bottom' %></div><br /><br />")