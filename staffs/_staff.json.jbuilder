json.extract! staff, *%i(
  id
  name
  staff_number
  joined_day
  retire_day
  birth_day
  age
  mobile_phone_number
  phone_number
  postal_code address distance
  graduate_school
  faculty
  nursery_experience_duration
  kindergarten_experience_duration
  educational_foundation
  hospital_experience_duration
  commute_method
  salary_type
  early_shift_salary
  late_shift_salary
  experience_salary
  rank_salary
  qualification_allowance_salary
  qualification_allowance_type
  housing_allowance_salary
  family_allowance_salary
  other_allowance_salary
  have_retirement_allowance
  transportation_cost
  pdf
  bonus_6
  bonus_12
  event_allowance_salary
  note
)
json.job do
  json.partial! staff.job
end

json.employment do
  json.partial! staff.employment
end

json.nursery do
  json.partial! staff.nursery
end

json.base_salaries do
  json.array! staff.base_salaries, partial: 'base_salaries/base_salary', as: :base_salary
end
