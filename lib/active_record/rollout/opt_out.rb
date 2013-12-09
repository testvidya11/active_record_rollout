# Ensures that a feature will never be available to the associated record,
# even in the case of, for example, a 100% flag.
class ActiveRecord::Rollout::OptOut < ActiveRecord::Base
  self.table_name = :active_record_rollout_opt_outs

  belongs_to :feature
  belongs_to :opt_out_subject, polymorphic: true

  validates :feature_id, presence: true
end
