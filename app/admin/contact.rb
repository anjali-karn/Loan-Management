ActiveAdmin.register Contact do
    permit_params :name, :email, :message
  
    index do
      selectable_column
      id_column
      column :email
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :email
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :email
        f.input :message
      end
      f.actions
    end
  
  end
  