# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Product.destroy_all
Favorite.destroy_all

#Users
u1 = User.create(name: "Mari", username: "mari", password: "123")

c1 = Category.create(name: "Skincare")
c2 = Category.create(name: "Makeup")
c3 = Category.create(name: "Hair")

#Products: skincare
p1 = Product.create(brand_name: "Living Libations", product_name: "Best Skin Ever - Seabuckthorn", description: "Silky Seabuckthorn Best Skin Ever, resets skin to its natural state of luminous, sparkling wonder! Seabuckthorn Best Skin Ever is an all-in-one cleanser, exfoliator, and moisturizer that can be used to grace the face, tempt the nose, and make skin sing from head to toes!", image_url: "https://cdn.shopify.com/s/files/1/0301/8729/0762/products/seabuckthorn-best-skin-ever-50ml_hires_197d9657-7bc3-41fd-8e80-3f3637bc0256_1024x1024@2x.jpg?v=1594054132", website: "https://livinglibations.com/collections/best-sellers/products/best-skin-ever-seabuckthorn", category_id: c1.id)

p2 = Product.create(brand_name: "100% Pure", product_name: "Coffee Bean Caffeine Eye Cream", description: "Anti-inflammatory, caffeine rich green tea and coffee de-puff while increasing circulation to brighten dark circles. Concentrated with potent anti-aging vitamins and antioxidants to awaken the eye area, and nourishing rosehip oil for softer, more youthful skin.", image_url: "https://cdn.no-toxic.com/q_auto:best,f_auto,fl_lossy,w_507,c_limit,dpr_1.0/v1580771914/products/1FMCBEC0.3OZ/1FMCBEC0.3OZ_Coffee_Bean_Eye_Cream_0.3oz_Primary", website: "https://www.100percentpure.com/collections/eye-care/products/coffee-bean-caffeine-eye-cream-0-3-oz", category_id: c1.id)

#Products: makeup
p3 = Product.create(brand_name: "100% Pure", product_name: "Fruit Pigmented® Cocoa Butter Matte Lipstick", description: "An innovative matte lipstick formula that keeps lips moisturized all day long while providing stunning, long-lasting color. Formulated with chocolate and antioxidant-rich fruit pigments like cherry, blueberry, and peach. Made with a nourishing blend of cocoa butter, shea butter, and vitamin E to moisturize and protect delicate lips from dryness.", image_url: "https://cdn.no-toxic.com/q_auto:best,f_auto,fl_lossy,w_600,c_limit,dpr_1.0/l_Badges:badges,w_0.3,y_-0.3,x_0.34,fl_relative,pg_name:2019-think-dirty/v1574894833/products/1CCBMLPP/1CCBMLPP_Matte_Lipstick_Prickly_Pear_Primary", website: "https://www.100percentpure.com/collections/lipstick/products/fruit-pigmented-cocoa-butter-matte-lipstick", category_id: c2.id)

p4 = Product.create(brand_name: "100% Pure", product_name: "Fruit Pigmented® Pretty Naked Palette", description: "Fruit pigmented® makeup palette celebrates neutral tones and soft shimmer to enhance and beautify your complexion. Includes eyeshadows, blush, and highlighter.", image_url: "https://cdn.no-toxic.com/q_auto:best,f_auto,fl_lossy,w_507,c_limit,dpr_1.0/v1582246714/products/1CNP/1CNP_Pretty_Naked_Palette_Primary", website: "https://www.100percentpure.com/collections/eyeshadow/products/fruit-pigmented-pretty-naked-palette", category_id: c2.id)

#Products: hair
p5 = Product.create(brand_name: "100% Pure", product_name: "Burdock & Neem Healthy Scalp Shampoo", description: "Purifying formula unclogs pores, stimulates circulation, and alleviates dryness, itching, and flaking. With added hydration for healthier scalp and hair.", image_url: "https://cdn.no-toxic.com/q_auto:best,f_auto,fl_lossy,w_507,c_limit,dpr_1.0/v1580172517/products/1HCSBNHS13OZ/1HCSBNHS13OZ_Burdock_Neem_Healthy_Scalp_Shampoo", website: "https://www.100percentpure.com/collections/shampoo/products/burdock-neem-healthy-scalp-shampoo-13oz", category_id: c3.id)

p6 = Product.create(brand_name: "100% Pure", product_name: "Argan Oil", description: "PLightweight and restorative Argan Oil is rich in vitamin E, phenols, carotenes, squalene, and essential fatty acids to deeply moisturize, nourish, and soften.", image_url: "https://cdn.no-toxic.com/q_auto:best,f_auto,fl_lossy,w_507,c_limit,dpr_1.0/v1563386326/products/1FMOAO1.6OZ/1FMOAO1.6OZ_Argan_Oil_Primary", website: "https://www.100percentpure.com/products/organic-argan-oil", category_id: c3.id)

#Favorites
f1 = Favorite.create(user_id: u1.id, product_id: p1.id)
f2 = Favorite.create(user_id: u1.id, product_id: p3.id)
f3 = Favorite.create(user_id: u1.id, product_id: p4.id)
f4 = Favorite.create(user_id: u1.id, product_id: p5.id)
