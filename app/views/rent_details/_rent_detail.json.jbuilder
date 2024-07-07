json.extract! rent_detail, :id, :hours, :membership_id, :created_at, :updated_at
json.url rent_detail_url(rent_detail, format: :json)
