class CreateSubsubproducts < ActiveRecord::Migration
  def change
    create_table :subsubproducts do |t|
      t.references :subproduct, :null => false
      t.string :name, :null => false
      t.timestamps
    end
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Conferences and marketing event management"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Online marketing/SEO/SEM"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Viral Marketing"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Guerilla marketing"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Traditional Marketing"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Public relations"
    Subsubproduct.create :subproduct_id =>52 ,:name =>"Open source"
    Subsubproduct.create :subproduct_id =>52 ,:name =>".Net"
    Subsubproduct.create :subproduct_id =>52 ,:name =>"Java"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Tandem"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"SAP"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"CRM"
    Subsubproduct.create :subproduct_id =>56 ,:name =>"MySQL"
    Subsubproduct.create :subproduct_id =>56 ,:name =>"SQL Server"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Sybase"
    Subsubproduct.create :subproduct_id =>1 ,:name =>"Oracle"
    Subsubproduct.create :subproduct_id =>71 ,:name =>"C, C++"
    Subsubproduct.create :subproduct_id =>71 ,:name =>"Java, Python, PHP"
    Subsubproduct.create :subproduct_id =>1 ,:name =>".Net"
  end
end
