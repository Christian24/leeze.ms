ActiveAdmin.register Tour do
permit_params :title, :teaser, :description, :url, category_ids: []
  form do |f|
    f.inputs "Details" do
    f.input :title
    f.input :teaser
    f.input :description
    f.input :url
    f.input :categories
    end
    f.actions
  end

end