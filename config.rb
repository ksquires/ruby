
#Performs a GET using the passed URL location
def get_json(location)
	response = RestClient::Request.new(
 	:method => :get,
	:url => location,
 	:user => $username,
 	:password => $password,
 	:headers => { :accept => :json,
 	:content_type => :json }
 ).execute
 JSON.parse(response.to_str)
end
# Performs a POST and passes the data to the URL location
def post_json(location, json_data)
 response = RestClient::Request.new(
 :method => :post,
 :url => location,
 :user => $username,
 :password => $password,
 :headers => { :accept => :json,
 :content_type => :json},
 :payload => json_data
 ).execute
 JSON.parse(response.to_str)
end
 # Creates a hash with ids mapping to names for an array of recods
def id_name_map(records)
  records.inject({}) do |map, record|
  map.update(record['id'] => record['name'])
 end
end

