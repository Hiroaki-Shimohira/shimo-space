== README

#user
##column
*nickname 
*email 
*password 
##associate
* has_many :massages 
* has_many :group_user 
* has_many :groups, through: :group_user 

#Group
##column
*name 
##associate
* has_many :massages 
* has_many :group_user 
* has_many :users ,through: :group_user 

#GroupUser
##column
* user_id 
* group_id 
##associate
* belongs_to :user 
* belongs_to :group 

#message
##column
* body 
* image 
* user_id 
* group_id 
#associate
* belongs_to :user 
* belongs_to :group 
