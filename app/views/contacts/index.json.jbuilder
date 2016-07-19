json.array!(@contacts) do |contact|
  json.extract! contact, :id, :phone, :email, :first_name, :last_name, :group
  json.url contact_url(contact, format: :json)
end
