class SerializableEnquiry < JSONAPI::Serializable::Resource
  type 'enquiries'
  attributes :first_name
end
