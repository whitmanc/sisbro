Deface::Override.new(:virtual_path => "spree/inquiries/new",
                     :name => "add_content_snippet_to_contact_page",
                     :insert_top => "#contact_form",
                     :text => "<h1>Contact Us</h1><div id='snippet_contact_form'><%= render_snippet 'contact_form_text' %></div>")