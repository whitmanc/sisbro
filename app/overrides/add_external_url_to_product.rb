Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "add_external_url_to_product",
                     :insert_bottom => "[data-hook='admin_product_form_fields']",
                     :text => '
                       <%= f.label :is_external, "Link product to external URL?" %>
                       <%= f.check_box :is_external %>
                       <%= f.label :external_url, "External Url" %>
                       <%= f.text_field :external_url %>',
                     :disabled => false)
                     
                     