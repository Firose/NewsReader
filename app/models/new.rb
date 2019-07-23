class New < ActiveRecord::Base
	include PgSearch
	pg_search_scope :search_by_full_name, against: [:title, :author]
end