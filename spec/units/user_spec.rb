require "User"

describe User do

 it "should return nil if the user does not exist " do
   expect(User.authenticate("test@gmail.com", "password")).to eq (nil)
 end


end
