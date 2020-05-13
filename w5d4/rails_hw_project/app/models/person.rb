# == Schema Information
#
# Table name: people
#
#  id       :integer          not null, primary key
#  name     :string           not null
#  house_id :integer          not null
#
class Person < ApplicationRecord
    validates :name, presence:true, uniqueness: true 
    validates :house_id, presence: true, uniqueness: true 

    belongs_to :house,
    primary_key: :id,
    foreign_key: :house_id, 
    class_name: :House 

end
