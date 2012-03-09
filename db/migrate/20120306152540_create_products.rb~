class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.timestamps
    end

    Product.create  :name => "Business & Finance"
    Product.create  :name => "Legal Services"
    Product.create  :name => "Personality Development &  Career Coaching"
    Product.create  :name => "Counseling Services"
    Product.create  :name => "Computers & Programming"
    Product.create  :name => "Healthcare & Medical"
    Product.create  :name => "Beauty, Fashion & Home"
    Product.create  :name => "Spirituality & Astrology"
    Product.create  :name => "Arts, Creative & Professional Services"
  end
end
