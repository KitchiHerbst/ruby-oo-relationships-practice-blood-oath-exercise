require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cori = Follower.new("Cori",27,"Just do it")
brian = Follower.new("Brian",24,"Just don't do it")
triston = Follower.new("Triston",23, "Go")
adri = Follower.new("Adri",28,"Cats, Cats, Cats")

flatiron = Cult.new("Flatiron","New York",2011,"learn to code")
anon = Cult.new("Anon","Stupidville",1999,"I have no idea")
austin = Cult.new("Austin","Texas",1900,"Keep it weird")
houston = Cult.new("Houston","Texas",1800,"Yeehaw")


bl1 = BloodOath.new(cori,flatiron,"2005-34-01")
bl2 = BloodOath.new(brian,flatiron,"2005-01-56")
bl4 = BloodOath.new(triston,flatiron,"2008-51-01")
bl5 = BloodOath.new(adri,flatiron,"2008-01-01")
bl6 = BloodOath.new(cori,houston,"2008-01-01")
bl7 = BloodOath.new(adri,austin,"2008-01-61")
bl8 = BloodOath.new(triston,austin,"2005-01-01")
bl9 = BloodOath.new(brian,austin,"2005-12-01")
bl10 = BloodOath.new(brian,anon,"2018-01-21")
bl11 = BloodOath.new(triston,anon,"2018-01-01")
bl12 = BloodOath.new(cori,anon,"2018-23-01")

bl14 = BloodOath.new(cori,austin,"2003-00-09")

"2005-01-01"



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits