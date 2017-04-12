json.staffs do
  json.array! @staffs, partial: 'staffs/staff', as: :staff
end

json.commute_methods do
  json.merge! Staff.ja_commute_methods
end

json.employments do
  json.array! @employments, partial: 'employments/employment', as: :employment
end

json.nurseries do
  json.array! @nurseries, partial: 'nurseries/nursery', as: :nursery
end

json.jobs do
  json.array! @jobs, partial: 'jobs/job', as: :job
end
