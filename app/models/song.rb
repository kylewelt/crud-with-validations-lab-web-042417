class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist_name, :release_year] }
  validates :release_year, inclusion: { in: 0..Time.now.year }, allow_nil: true
  validates :artist_name, presence: true
  validates :release_year, presence: true, if: :released?

end
