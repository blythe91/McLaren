json.extract! spr_person, :id, :document, :asv_member, :representative, :first_name, :second_name, :first_last_name, :second_last_name, :gender, :mobile_phone, :phone, :main_email, :second_email, :address, :ocupation_id, :nationality_id, :academic_level_id, :relationship_id, :Document_type_id, :created_at, :updated_at
json.url spr_person_url(spr_person, format: :json)
