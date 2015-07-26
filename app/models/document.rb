class Document < ActiveRecord::Base
  belongs_to :upload

  attachment :file
end
