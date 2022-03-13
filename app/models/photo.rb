# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  caption        :text
#  comments_count :integer
#  image          :string
#  likes_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
class Photo < ApplicationRecord
  def owner_username 
    my_id = self.owner_id

    matching_users = User.where({ :id => my_id })

    the_user = matching_users.at(0)

    return the_user
  end
end
