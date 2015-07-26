class Upload < ActiveRecord::Base
  has_many :documents

  accepts_attachments_for :documents, attachment: :file
end
