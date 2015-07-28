DESCRIPTION|TYPE|URL|INPUT
|------|------|-------|------|
admin_new_in_order_sales|POST|http:/192.168.1.18:3000/admin/curation/new_in_order_sales|{"ordering"=>{"10"=>1, "11"=>10, "12"=>2}, "tag_id"=>1}
admin_new_in_order_tags|POST|http:/192.168.1.18:3000/admin/curation/new_in_order_tags|{"ordering"=>{"1"=>1, "2"=>2, "3"=>10}}
admin_curated_c2s|GET|http://192.168.1.18:3000/v1/admin/curation/curated_c2s?tag_id=4|_
admin_new_in_get_sales|GET|http:/192.168.1.18:3000/admin/curation/new_in_get_sales?tag_id=1|_
curated_c1s|GET|http://localhost:3000/v1/admin/curation/curated_c1s|_
get_featured_sales|GET|http:/localhost:3000/v1/admin/curation/featured_sales?tag_id=15|_
admin_search_sale|GET|http://localhost:3000/v1/admin/curation/search_sale?sale_name=jewel-box_4&tag_id=15|_
admin_insert_curation_tag|POST|http://192.168.1.18:3000/v1/admin/curation/insert_curation_tag|{ "tag_id":1, "position": 1, "parent_id": 0}
admin_insert_curated_c1s|GET|http://192.168.1.18:3000/v1/admin/curation/curated_c1s|_
admin_new_in_tag_delete|POST|http:/192.168.1.18:3000/admin/curation/new_in_tag_delete|{"tag_id"=>1}
admin_new_in_sale_delete|POST|http:/192.168.1.18:3000/admin/curation/new_in_sale_delete|{"tag_id"=>1, "sale_id"=>2}
admin_new_in_save_sale|POST|http:/192.168.1.18:3000/admin/curation/new_in_save_sale|{"tag_id"=>1, "sale_id"=>10, "sale_position"=>1}
all_c1s (Non curated)|GET|http://localhost:3000/v1/admin/curation/all_c1s|_
featured_sale_delete|POST|http:/192.168.1.18:3000/v1/admin/curation/featured_sale_delete|{"tag_id"=>4, "sale_id"=>2500}
noncurated_c2|GET|http://localhost:3000/v1/admin/curation/noncurated_c2s?tag_id=2|_
featured_sale_order|POST|http:/192.168.1.18:3000/v1/admin/curation/featured_sales_order|{"ordering"=>{"2500"=>3, "2501"=>1}, "tag_id"=>4}
create_featured_sale|POST|http:/localhost:3000/v1/admin/curation/create_featured_sale|{"tag_id"=>15, "sale_id"=>4, "position"=>4}
admin_new_in_save_tag|POST|http:/192.168.1.18:3000/admin/curation/new_in_save_tag|{"tag_id"=>1, "position"=>1}
 destroy_curation_tag|POST|http:/192.168.1.18:3000/admin/curation/destroy_curation_tag|{"tag_id" => 1, "parent_id" => 0}
get_featured_sales|GET|http:/192.168.1.18:3000/admin/curation/featured_sales?tag_id=1|_
search sales|GET|http:/192.168.1.18:3000/admin/curation/search_sale?sale_name=s1&tag_id=1|_
new_in_serach_tags|GET|http:/192.168.1.18:3000/admin/curation/new_in_search_tags?keyword='tag_name'|_
new_in_search_sales|GET|http:/192.168.1.18:3000/admin/curation/new_in_search_sales?keyword='tag_name'&tag_id=1|_
order_curation_tags c1 and c2|POST|http:/192.168.1.18:3000/admin/curation/order_curation_tag|{"parent_id" => 1, "ordering" => {"2400"=> "1","2401" => "2"}}
new_in_get_tags|GET|http://192.168.1.18:300/admin/curation/new_in_get_tags|nil
get sales for featured/new|GET|http://0.0.0.0:3000/v1/admin/curation/get_tag_sales?tag_id=1|id
create_tag|POST|http://localhost:3000/v1/admin/curation/create_tag|{ "tag_name": "","tag_label": "","parent_id": }parent_id => 0 if it is parent tag.
Show all tags|GET|http://localhost:3000/admin/tags?parent_id=0&type=c1/c2 , http://localhost:3000/admin/tags?parent_id=0&type=c1/c2&page=2|* Pass page no if required* parent_id: send parent_id* type: either c1 or c2
Show one tag details|GET|http://localhost:3000/admin/tags/1|_
Update tag detais
|PUT|http://localhost:3000/admin/tags/1|{tag: {label: "", name: ""}}
Destroy tag detail|DELETE|http://localhost:3000/admin/tags/1|_
Create new tag|POST|http://localhost:3000/admin/tags|{label: "", parent_id: }
search tags|GET|http://localhost:300/admin/tags/search?q=search_keyword&parent_id=1&type=c1|* q: keywords* parent_id and type
Show all products|GET|http://localhost:3000//v1/admin/products|_
populate product filters|POST|http://localhost:3000//v1/admin/products/filters|_
Search products|POST|http://localhost:3000//v1/admin/products/search?key=sku&value=k|Key=Searching column name, value= search string
Product Search sales for association|GET|http://0.0.0.0:3000/v1/admin/products/search_sale?q=99|q = Searching name or label
Product sale association|POST|http://localhost:3000//v1/admin/products/product_sale_association?id=1| id = product id in querry string        {"id": 1,"sale_ids": [            2,            9        ]    }
Product sale association remove|POST|http://localhost:3000//v1/admin/products/remove_product_sale|{   "product_id" : 1,  "sale_id": 9    }
Show one product details|GET|http://localhost:3000//v1/admin/products/1|id
Create new product |POST|http://localhost:3000//v1/admin/products|{    "product": {               "label": "product6",        "description": "iudhwiu dkjadj adkadj akdajkd dakjd",        "vendor_code": "VES",        "style_code": "Styk92",        "hidden": true,              "size_chart_path": "http://s3-ap-southeast-1.amazonaws.com/st-size-chart/fashionistaa21-footwear.html",        "use_with": "wdwdw",        "color": "yellow",        "material": "cotton",        "detail": "fwfaf wfafe wefwef wfwef",        "occasion": "occasion",        "hw": "hw",        "caution":"caution",        "composition": "nulu",        "set_of": "pants",        "product_type":"cloths",        "ingredients": "ingrediants",        "disclaimer": "desclimer",        "color_family": "brown",        "deliverytype_id": 8,        "tax_code": "06",        "gender": "men",        "import_id": 4           }}
Update product details|PUT|http://localhost:3000//v1/admin/products/1|{    "product": {               "label": "product6",        "description": "iudhwiu dkjadj adkadj akdajkd dakjd",        "vendor_code": "VES",        "style_code": "Styk92",        "hidden": true,              "size_chart_path": "http://s3-ap-southeast-1.amazonaws.com/st-size-chart/fashionistaa21-footwear.html",        "use_with": "wdwdw",        "color": "yellow",        "material": "cotton",        "detail": "fwfaf wfafe wefwef wfwef",        "occasion": "occasion",        "hw": "hw",        "caution":"caution",        "composition": "nulu",        "set_of": "pants",        "product_type":"cloths",        "ingredients": "ingrediants",        "disclaimer": "desclimer",        "color_family": "brown",        "deliverytype_id": 8,        "tax_code": "06",        "gender": "men",        "import_id": 4           }}
Show all delivery type|GET|http://localhost:3000//v1/admin/deliverytypes|_
Show/Edit one delivery type|GET|http://localhost:3000//v1/admin/deliverytypes/1/|id
Create delivery type|POST|http://localhost:3000//v1/admin/deliverytypes|{    "deliverytype": {               "label": "type1",        "name": "typekajdb",        "express": true    }}
Update delivery type|PUT|http://localhost:3000//v1/admin/deliverytypes/1|{    "deliverytype": {               "label": "type1",        "name": "typekajdb",        "express": true    }}
show all Propertymaster|GET|http://localhost:3000//v1/admin/propertymasters|_
Show/Edit one propertymaster|GET|http://localhost:3000//v1/admin/propertymasters/1/edit|id
Create propertymaster|POST|http://localhost:3000//v1/admin/propertymasters|{  "propertymaster":{     "ptype": "gen-1",     "value": "Women-1"     }}
Update propertymaster|PUT|http://localhost:3000//v1/admin/propertymasters/1|{  "propertymaster":{     "ptype": "gen-1",     "value": "Women-1"     }}
Create sale|POST|http://localhost:3000//v1/admin/sales|{    "sale": {        "label": "sale-test",        "hidden": true,        "start_date": "2015-06-09 09:41:08",        "end_date": "2015-07-09 09:41:08",        "description": "test sales",        "promotext": "qwdqwdqwdqw",        "cod_enabled": true    }}
Update sale|PUT|http://localhost:3000//v1/admin/sales/1|{    "sale": {        "label": "sale-test",        "hidden": true,        "start_date": "2015-06-09 09:41:08",        "end_date": "2015-07-09 09:41:08",        "description": "test sales",        "promotext": "qwdqwdqwdqw",        "cod_enabled": true    }}
Show all sale|GET|http://localhost:3000//v1/admin/sales|_
Show or edit particular sale|GET|http://localhost:3000//v1/admin/sales/1|id
show sale filters|GET |http://localhost:3000//v1/admin/sales/filters|_
Search sale with dates|POST|http://localhost:3000//v1/admin/sales/search_sale_withdates|{   "start_date" : "2015-05-30 09:38:50",   "end_date" : "2015-05-30 09:38:50"}
Search sale|GET|http://localhost:3000//v1/admin/sales/search?key=label&value=sale_label|Key and value
Sale tag association|POST|http://localhost:3000//v1/admin/sales/sale_tag_association|{    "id": "1",    "tag_ids": [        1,        2,        3    ]}
Sale tag association remove|POST|http://localhost:3000//v1/admin/sales/remove_sale_tag|{    "sale_id": 1,    "tag_id":2 }
search tags for sale tag association|GET|http://localhost:3000//v1/admin/sales/search_tag?q=me|q = searching string
Update variants |PUT|http://localhost:3000//v1/admin/variants/120889|{    "variant": {        "sku": "GHLJ565299",        "stock_on_hand": "10",        "loaded_stock": "10",        "extra_shipping_cost": "54",        "cost_price": "38334.6",        "mrp": "38334.6",        "dmrp": "38334.6",        "dimension_id": "1",        "owner": "indhumathi.mathur@styletag.com",        "weight": "500"    }}
Edit /Show variants|GET|http://localhost:3000//v1/admin/variants/1/edit|id
Show all variants|GET|http://localhost:3000//v1/admin/variants|_
Create new variants based on product|POST|http://0.0.0.0:3000/v1/admin/products/create_variant|{ "product_id": 1,"sku": "ABCDSKU-31",  "stock_on_hand" : 10,  "extra_shipping_cost": 0,  "cost_price": 100,  "mrp": 500,  "dmrp": 100,  "dimension_id": 1,  "owner": "Vijay",    "weight": "100gms"}
Create dimension|POST|http://localhost:3000//v1/admin/dimensions|{    "dimension": {        "metric": "size-ss",        "value": "3.5(UK)"    }}
update dimension|PUT|http://localhost:3000//v1/admin/dimensions/1|{    "dimension": {        "metric": "size-ss",        "value": "3.5(UK)"    }}
Show all dimension|GET |http://localhost:3000//v1/admin/dimensions|_
Edit /Show dimension|GET|http://localhost:3000//v1/admin/dimensions/816/edit|_
dimension search|GET|http://0.0.0.0:3000/v1/admin/dimensions/search?q=val-10
|_
tag_sales_without_pgng|GET|http://localhost:3000//v1/admin/tags/tag_sales?tag_id=1|tag_id
sale_products_without_pgng|GET|http://localhost:3000//v1/admin/sales/sale_products?sale_id=1|sale_id
set_Product_positions|POST|http://localhost:3000//v1/admin/curation/set_product_positions|{"data" => "{\"sale_id\":1,\"product\":[{\"product_id\":1,\"position\":2},{\"product_id\":89965,\"position\":1}]}"}
set_sale_positions|POST|http://localhost:3000//v1/admin/curation/set_sale_positions|{"data" => "{\"tag_id\":1,\"sale\":[{\"sale_id\":6,\"position\":1},{\"sale_id\":4,\"position\":2}]}"}
Create carousel|POST|http://localhost:3000//v1/admin/carousels|{    "carousel": {        "name": "test_carousel1",        "path": "/camerasoptics",        "position": 1,        "live": true,        "target_blank": true,        "Destination_url":"kqhdk",        "sale_id":2            }}
Show all carousel|GET|http://localhost:3000//v1/admin/carousels|_
Show carousel|GET|http://localhost:3000//v1/admin/carousels/1|id
Update carousel|PUT|http://localhost:3000//v1/admin/carousels/1|{    "carousel": {        "name": "test_carousel1",        "path": "/camerasoptics",        "position": 1,        "live": true,        "target_blank": true,        "Destination_url":"kqhdk",        "sale_id":2            }}
Carousel filter|GET|http://localhost:3000//v1/admin/carousels/filters|_
Carousel search|GET|http://localhost:3000//v1/admin/carousels/search?key=name&value=raju|key and value
get carousel_pins|GET|http://localhost:3000//v1/admin/carousels/carousel_pins?id=1|id
Search path for carousel|GET|http://localhost:3000//v1/admin/carousels/get_carousel?q=/tag/test|q = search params
Show all image|GET|http://localhost:3000//v1/admin/carousel_images|_
show a image|GET|http://localhost:3000//v1/admin/carousel_images/1|id
create image|POST|http://localhost:3000//v1/admin/carousel_images|{    "image": {        "path":"/path",        "alternative_text":"text",        "type_id":1    }}
destroy image|DELETE|http://localhost:3000//v1/admin/carousel_images/1|id
create pin links|POST|http://localhost:3000//v1/admin/pin_links|{    "pin_link": {        "name":"pin",        "carousel_id":1,        "destination_url":1,         "x1":20,         "x2":20,         "x3":20,         "x4":20,         "alt_text":"text",         "target_blank":true    }}
show all pin link|GET|http://localhost:3000//v1/admin/pin_links|_
show a pin link|GET|http://localhost:3000//v1/admin/pin_links/1|id
update pin link|PUT|http://localhost:3000//v1/admin/pin_links/1|{    "pin_link": {        "name":"pin",        "carousel_id":1,        "destination_url":1,         "x1":20,         "x2":20,         "x3":20,         "x4":20,         "alt_text":"text",         "target_blank":true    }}
Destroy pin link|DELETE|http://localhost:3000//v1/admin/pin_links/1|id
get colour_family filters|GET|http://localhost:3000//v1/admin/products/color_family|_
get gender filters|GET|http://localhost:3000//v1/admin/products/gender|_
get tax_codes|GET|http://localhost:3000//v1/admin/products/tax_codes|_
Create Promotion|POST|http://localhost:3000//v1/admin/promotions|{    "promotion": {        "name": "test_man",        "coupon_code": "Test123",        "start_date": "2015-07-21 07:35:47",        "end_date": "2015-07-27 07:35:47",        "description": "hi test promo",                "usage_limit": 10    },        "actions": {            "condition": "AND",            "ruless": "rule things"},        "rules": {            "condition": "AND",            "ruless": "rule things"}}
Search promotion|GET|http://localhost:3000//v1/admin/promotions/search?q=test|q = name
Update Promotion|PUT|http://localhost:3000//v1/admin/promotions/9|{    "promotion": {        "name": "test_man",        "coupon_code": "Test123",        "start_date": "2015-07-21 07:35:47",        "end_date": "2015-07-27 07:35:47",        "description": "hi test promo",                "usage_limit": 10    },        "actions": {            "condition": "AND",            "ruless": "rule things"},        "rules": {            "condition": "AND",            "ruless": "rule things"}}
Edit Promotion|GET|http://localhost:3000//v1/admin/promotions/9/edit|id
Get Active Promotions|GET|http://localhost:3000//v1/admin/promotions|_
Propertymaster Seach|GET|http://localhost:3000//v1/admin/propertymasters/search?type=ptype&q=gender|type => ptype or value from filters
Propertymaster Seach filters|GET|http://localhost:3000//v1/admin/propertymasters/filters|_
Get all orders|GET|http://localhost:3000//v1/admin/orders|_
Get single order|GET|http://localhost:3000//v1/admin/orders/1|order_id
Edit order bill Address|GET|http://localhost:3000//v1/admin/orders/1/edit?type=bill|order_id and type of address = bill
Edit order Ship Address|GET|http://localhost:3000//v1/admin/orders/1/edit?type=ship|order_id and type of address = ship
update order bill address|PUT|http://localhost:3000//v1/admin/orders/1?type=bill|{    "order": {                "bill_firstname": "raj",        "bill_address_line": null,        "bill_pincode": null,        "bill_phone": null,        "bill_landmark": null,        "bill_city": null,        "bill_state": null,        "bill_country": null    }}
update order ship address|PUT|http://localhost:3000//v1/admin/orders/1?type=ship|{    "order": {                "ship_firstname": "raj",        "ship_address_line": null,        "ship_pincode": null,        "ship_phone": null,        "ship_landmark": null,        "ship_city": null,        "ship_state": null,        "ship_country": null    }}
Edit OrderItem bill address|GET|http://localhost:3000//v1/admin/orders/1/order_items/1/edit?type=bill|_
Edit OrderItem ship address|GET|http://localhost:3000//v1/admin/orders/1/order_items/1/edit?type=ship|_
Update orderitem bill address|PUT|http://localhost:3000//v1/admin/orders/1/order_items/1|{    "orderitem": {        "type": "bill",        "ship_firstname": "gagch",        "ship_address_line": "grbjfugh",        "ship_pincode": "21434234",        "ship_phone": "34122342",        "ship_landmark": "temple",        "ship_city": "cgbhrg",        "ship_state": "gjgrcha",        "ship_country": "ubhacgrf"    }}
Update orderitem ship address|PUT|http://localhost:3000//v1/admin/orders/1/order_items/1|{    "orderitem": {        "type": "ship",        "ship_firstname": "gagceffh",        "ship_address_line": "grbjfusfgh",        "ship_pincode": "0000000",        "ship_phone": "123456789",        "ship_landmark": "templgefe",        "ship_city": "cgbhrfssdg",        "ship_state": "gjgrcsfhsffa",        "ship_country": "ubhasfcgrf"    }}
