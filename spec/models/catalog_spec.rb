require 'rails_helper'

RSpec.describe Catalog, type: :model do
  it { is_expected.to validate_presence_of(:show_id) }
  it { is_expected.to validate_uniqueness_of(:show_id).case_insensitive }
  it { is_expected.to validate_presence_of(:genre) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:director) }
  it { is_expected.to validate_presence_of(:release_year) }
  it { is_expected.to validate_numericality_of(:release_year).is_greater_than(0) }
  it { is_expected.to validate_presence_of(:cast) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:date_added) }
  it { is_expected.to validate_presence_of(:rating) }
  it { is_expected.to validate_presence_of(:duration) }
  it { is_expected.to validate_presence_of(:listed_in) }
  it { is_expected.to validate_presence_of(:description) }
end
