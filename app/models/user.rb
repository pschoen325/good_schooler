class User < ApplicationRecord
  belongs_to :code_school
  has_one :profile
  has_many :projects

  scope :active, -> { where(active: true) }
  scope :for_cohort, -> (cohort_num) { where(cohort: cohort_num) }
  scope :active_cohort, -> (num) { active.for_cohort num }
end
