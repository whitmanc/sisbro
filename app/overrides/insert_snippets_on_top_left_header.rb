Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "insert_snippet_at_header_top_left",
                     :insert_before => "#header",
                     :text => "<div id='header_top_left' class='snippet'><%= render_snippet 'header_top_left' %></div>")


