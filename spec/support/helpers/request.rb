module Helpers
  def response_json(object_class = OpenStruct)
    JSON.parse(response.body, object_class: object_class)
  end
end
