# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(username: "siascone580")
User.create!(username: "spencer580")
User.create!(username: "ayce540")

Artwork.create!(title: "rails", image_url: "rails.com/rails.png", artist_id: User.first.id)
Artwork.create!(title: "ruby", image_url: "rails.com/ruby.png", artist_id: User.last.id)

ArtworkShare.create!(viewer_id: User.first.id, artwork_id: Artwork.last.id)
