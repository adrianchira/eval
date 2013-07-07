ActiveAdmin.register User do
  form do |f|
  f.inputs do
    f.input :name, label: "Nume si prenume"
    f.input :email, :required => true, :autofocus => true
    f.input :image, label: "Fotografie"
    f.input :password, :required => true
    f.input :password_confirmation, :required => true
    f.input :is_evaluator, label: "Este evaluator"
    f.input :evaluator_id, label: "Este evaluat de:"
    f.input :marca, label: "Marca"
  end
  f.buttons
end
end
