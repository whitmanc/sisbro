# app/overrides/home_link.rb
Deface::Override.new(:virtual_path     => "spree/shared/_store_menu",
                     :name             => "sisbro_main_site_home_link",
                     :replace_contents => "li#home-link",
                     :text             => "<span style='font-size:15px; font-weight:bolder'><a href='http://sisbro.com'>Main Site</a></span>")