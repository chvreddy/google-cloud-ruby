# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/filters.proto


require 'google/protobuf'

require 'google/cloud/talent/v4beta1/application_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/cloud/talent/v4beta1/job_pb'
require 'google/cloud/talent/v4beta1/profile_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/date_pb'
require 'google/type/latlng_pb'
require 'google/type/timeofday_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.talent.v4beta1.JobQuery" do
    optional :query, :string, 1
    repeated :companies, :string, 2
    repeated :location_filters, :message, 3, "google.cloud.talent.v4beta1.LocationFilter"
    repeated :job_categories, :enum, 4, "google.cloud.talent.v4beta1.JobCategory"
    optional :commute_filter, :message, 5, "google.cloud.talent.v4beta1.CommuteFilter"
    repeated :company_display_names, :string, 6
    optional :compensation_filter, :message, 7, "google.cloud.talent.v4beta1.CompensationFilter"
    optional :custom_attribute_filter, :string, 8
    optional :disable_spell_check, :bool, 9
    repeated :employment_types, :enum, 10, "google.cloud.talent.v4beta1.EmploymentType"
    repeated :language_codes, :string, 11
    optional :publish_time_range, :message, 12, "google.cloud.talent.v4beta1.TimestampRange"
    repeated :excluded_jobs, :string, 13
  end
  add_message "google.cloud.talent.v4beta1.ProfileQuery" do
    optional :query, :string, 1
    repeated :location_filters, :message, 2, "google.cloud.talent.v4beta1.LocationFilter"
    repeated :job_title_filters, :message, 3, "google.cloud.talent.v4beta1.JobTitleFilter"
    repeated :employer_filters, :message, 4, "google.cloud.talent.v4beta1.EmployerFilter"
    repeated :education_filters, :message, 5, "google.cloud.talent.v4beta1.EducationFilter"
    repeated :skill_filters, :message, 6, "google.cloud.talent.v4beta1.SkillFilter"
    repeated :work_experience_filter, :message, 7, "google.cloud.talent.v4beta1.WorkExperienceFilter"
    repeated :time_filters, :message, 8, "google.cloud.talent.v4beta1.TimeFilter"
    optional :hirable_filter, :message, 9, "google.protobuf.BoolValue"
    repeated :application_date_filters, :message, 10, "google.cloud.talent.v4beta1.ApplicationDateFilter"
    repeated :application_outcome_notes_filters, :message, 11, "google.cloud.talent.v4beta1.ApplicationOutcomeNotesFilter"
    repeated :application_job_filters, :message, 13, "google.cloud.talent.v4beta1.ApplicationJobFilter"
    optional :custom_attribute_filter, :string, 15
  end
  add_message "google.cloud.talent.v4beta1.LocationFilter" do
    optional :address, :string, 1
    optional :region_code, :string, 2
    optional :lat_lng, :message, 3, "google.type.LatLng"
    optional :distance_in_miles, :double, 4
    optional :telecommute_preference, :enum, 5, "google.cloud.talent.v4beta1.LocationFilter.TelecommutePreference"
    optional :negated, :bool, 6
  end
  add_enum "google.cloud.talent.v4beta1.LocationFilter.TelecommutePreference" do
    value :TELECOMMUTE_PREFERENCE_UNSPECIFIED, 0
    value :TELECOMMUTE_EXCLUDED, 1
    value :TELECOMMUTE_ALLOWED, 2
  end
  add_message "google.cloud.talent.v4beta1.CompensationFilter" do
    optional :type, :enum, 1, "google.cloud.talent.v4beta1.CompensationFilter.FilterType"
    repeated :units, :enum, 2, "google.cloud.talent.v4beta1.CompensationInfo.CompensationUnit"
    optional :range, :message, 3, "google.cloud.talent.v4beta1.CompensationInfo.CompensationRange"
    optional :include_jobs_with_unspecified_compensation_range, :bool, 4
  end
  add_enum "google.cloud.talent.v4beta1.CompensationFilter.FilterType" do
    value :FILTER_TYPE_UNSPECIFIED, 0
    value :UNIT_ONLY, 1
    value :UNIT_AND_AMOUNT, 2
    value :ANNUALIZED_BASE_AMOUNT, 3
    value :ANNUALIZED_TOTAL_AMOUNT, 4
  end
  add_message "google.cloud.talent.v4beta1.CommuteFilter" do
    optional :commute_method, :enum, 1, "google.cloud.talent.v4beta1.CommuteMethod"
    optional :start_coordinates, :message, 2, "google.type.LatLng"
    optional :travel_duration, :message, 3, "google.protobuf.Duration"
    optional :allow_imprecise_addresses, :bool, 4
    oneof :traffic_option do
      optional :road_traffic, :enum, 5, "google.cloud.talent.v4beta1.CommuteFilter.RoadTraffic"
      optional :departure_time, :message, 6, "google.type.TimeOfDay"
    end
  end
  add_enum "google.cloud.talent.v4beta1.CommuteFilter.RoadTraffic" do
    value :ROAD_TRAFFIC_UNSPECIFIED, 0
    value :TRAFFIC_FREE, 1
    value :BUSY_HOUR, 2
  end
  add_message "google.cloud.talent.v4beta1.JobTitleFilter" do
    optional :job_title, :string, 1
    optional :negated, :bool, 2
  end
  add_message "google.cloud.talent.v4beta1.SkillFilter" do
    optional :skill, :string, 1
    optional :negated, :bool, 2
  end
  add_message "google.cloud.talent.v4beta1.EmployerFilter" do
    optional :employer, :string, 1
    optional :mode, :enum, 2, "google.cloud.talent.v4beta1.EmployerFilter.EmployerFilterMode"
    optional :negated, :bool, 3
  end
  add_enum "google.cloud.talent.v4beta1.EmployerFilter.EmployerFilterMode" do
    value :EMPLOYER_FILTER_MODE_UNSPECIFIED, 0
    value :ALL_EMPLOYMENT_RECORDS, 1
    value :CURRENT_EMPLOYMENT_RECORDS_ONLY, 2
    value :PAST_EMPLOYMENT_RECORDS_ONLY, 3
  end
  add_message "google.cloud.talent.v4beta1.EducationFilter" do
    optional :school, :string, 1
    optional :field_of_study, :string, 2
    optional :degree_type, :enum, 3, "google.cloud.talent.v4beta1.DegreeType"
    optional :negated, :bool, 6
  end
  add_message "google.cloud.talent.v4beta1.WorkExperienceFilter" do
    optional :min_experience, :message, 1, "google.protobuf.Duration"
    optional :max_experience, :message, 2, "google.protobuf.Duration"
  end
  add_message "google.cloud.talent.v4beta1.ApplicationDateFilter" do
    optional :start_date, :message, 1, "google.type.Date"
    optional :end_date, :message, 2, "google.type.Date"
  end
  add_message "google.cloud.talent.v4beta1.ApplicationOutcomeNotesFilter" do
    optional :outcome_notes, :string, 1
    optional :negated, :bool, 2
  end
  add_message "google.cloud.talent.v4beta1.ApplicationJobFilter" do
    optional :job_requisition_id, :string, 2
    optional :job_title, :string, 3
    optional :negated, :bool, 4
  end
  add_message "google.cloud.talent.v4beta1.TimeFilter" do
    optional :start_time, :message, 1, "google.protobuf.Timestamp"
    optional :end_time, :message, 2, "google.protobuf.Timestamp"
    optional :time_field, :enum, 3, "google.cloud.talent.v4beta1.TimeFilter.TimeField"
  end
  add_enum "google.cloud.talent.v4beta1.TimeFilter.TimeField" do
    value :TIME_FIELD_UNSPECIFIED, 0
    value :CREATE_TIME, 1
    value :UPDATE_TIME, 2
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        JobQuery = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobQuery").msgclass
        ProfileQuery = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ProfileQuery").msgclass
        LocationFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.LocationFilter").msgclass
        LocationFilter::TelecommutePreference = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.LocationFilter.TelecommutePreference").enummodule
        CompensationFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationFilter").msgclass
        CompensationFilter::FilterType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationFilter.FilterType").enummodule
        CommuteFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CommuteFilter").msgclass
        CommuteFilter::RoadTraffic = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CommuteFilter.RoadTraffic").enummodule
        JobTitleFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobTitleFilter").msgclass
        SkillFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SkillFilter").msgclass
        EmployerFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.EmployerFilter").msgclass
        EmployerFilter::EmployerFilterMode = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.EmployerFilter.EmployerFilterMode").enummodule
        EducationFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.EducationFilter").msgclass
        WorkExperienceFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.WorkExperienceFilter").msgclass
        ApplicationDateFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ApplicationDateFilter").msgclass
        ApplicationOutcomeNotesFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ApplicationOutcomeNotesFilter").msgclass
        ApplicationJobFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ApplicationJobFilter").msgclass
        TimeFilter = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.TimeFilter").msgclass
        TimeFilter::TimeField = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.TimeFilter.TimeField").enummodule
      end
    end
  end
end
