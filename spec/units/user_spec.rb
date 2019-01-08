require "User"

describe User do

 it "should return nil if the user does not exist " do
   expect(User.authenticate("test@gmail.com", "password")).to eq (nil)
 end

 it "Should return nil if user exists but password is incorrect" do
   user = User.create(email: "something@gmail.com", password: 3)
   expect(User.authenticate("something@gmail.com", "somethingelse")).to eq (nil)
 end

 it "Should return user if user exists" do
   user = User.create(email: "something@gmail.com", password: "secret")
   expect(User.authenticate("something@gmail.com", "secret")).to eq (user)
 end

end
