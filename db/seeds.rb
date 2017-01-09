# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# @sub1 = Subscription.create(level: "$10/month", description: "Starter Box")
# @sub2 = Subscription.create(level: "$30/month", description: "Advanced Box")
# @sub3 = Subscription.create(level: "$100/month", description: "Super Pro Box")


Box.create(title: "Rule Your Space Box", price: 9995, description: "Build touch-activated inventions to control your stuff. Great for kids & younger makers.", age_recommendation: 8, image: "https://s3.amazonaws.com/lb-spree/spree/products/3046/large/ryr-kit.jpg?1477951666", sub_box_level: "STARTER BOX", sub_box_info: "8+ INVENTIONS", sub_box_guide: "76-PAGE INVENTION GUIDEBOOK")
Box.create(title: "Arduino Coding Box", price: 9995, description: "Create programmable inventions while learn basic coding. Great for older kids & prototypers.", age_recommendation: 12, image: "https://s3.amazonaws.com/lb-spree/spree/products/3033/large/ack-kit.jpg?1471356817", sub_box_level: "ADVANCED BOX", sub_box_info: "3+ INVENTIONS", sub_box_guide: "24-PAGE INVENTION GUIDEBOOK")
Box.create(title: "Smart House Box", price: 24900, description: "Create DIY smart home inventions that you control over the internet. Great for DIY’ers.", age_recommendation: 16, image: "https://s3.amazonaws.com/lb-spree/spree/products/3006/large/SHK-Reskin-wBits_HR.jpg?1469125020", sub_box_level: "SUPER PRO BOX", sub_box_info: "3+ INVENTIONS", sub_box_guide: "19-PAGE INVENTION GUIDEBOOK")

Subscription.create(box_id: 1, level: "$10/month", subtitle: "Have an little inventor?", description: "Inspire their creativity with the right tools in this month's bite-size BitBox (7 BITS & 3 Accessories).", shipping_info: "Free Shipping*")
Subscription.create(box_id: 2, level: "$30/month", subtitle: "Have an little inventor?", description: "Inspire their creativity with the right tools in this month's medium-size BitBox (8 BITS & 18 Accessories).", shipping_info: "Free Shipping*")
Subscription.create(box_id: 3, level: "$100/month", subtitle: "Have an little inventor?", description: "Inspire their creativity with the right tools in this month's large-size BitBox (304 BITS & 228 Accessories).", shipping_info: "Free Shipping*")

