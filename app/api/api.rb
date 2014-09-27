class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::ActiveModelSerializers

  before do
    header["Access-Control-Allow-Origin"] = "*"
    header["Access-Control-Request-Method"] = "*"
  end

  mount Prop::Characteristics
  mount Prop::Locations
  mount Prop::PropertyTypes
  mount Prop::Publications
  mount Prop::Users

  base_path_proc = Proc.new do |r|
    if Rails.env.development?
      "#{r.base_url}/api"
    else
      "http://#{r.host}/api"
    end
  end
  add_swagger_documentation mount_path: "api_docs",
                            api_version: "v1",
                            hide_documentation_path: true,
                            hide_format: true,
                            base_path: base_path_proc
end