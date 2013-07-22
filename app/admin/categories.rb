ActiveAdmin.register Category do

  index do
    column  "Categorie", :category
    column  "ID", :category_id 
    
  
  default_actions
end
  form do |f|
  f.inputs do
    f.input :category, label: "Categorie", :required => true
    f.input :category_id, label: "ID", :required => true
  end

  f.buttons
end
end
  

