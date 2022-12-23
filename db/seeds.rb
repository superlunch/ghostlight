puts "Seeding teams..."

cast = Team.create!(team_name: "Cast")
creative = Team.create!(team_name: "Creative")
management = Team.create!(team_name: "Management")


puts "Seeding productions..."

prod1 = Production.create!(prod_title: "Blasted")


puts "Seeding jobs..."

Job.create!(title: "Stage Manager", team_id: 4)
Job.create!(title: "Director", team_id: 2)
Job.create!(title: "Assistant Stage Manager", team_id: 4)
Job.create!(title: "Dramaturg", team_id: 2)
Job.create!(title: "Actor", team_id: 1)


puts "Seeding users..."

SM = User.create!(email: "coxscout@gmail.com", password_digest: "hiworld", first_name: "Scout", last_name: "Cox", phone: "4235447613", dob: "1998-06-17", emergency_name: "Kaytie Scott", emergency_phone: "2125550001", emergency_relationship: "Roommate", job_id: 1, production_id: 1, is_admin: true)
Ian = User.create!(email: "benjilevi@cat.com", password_digest: "hiworld1", first_name: "Benji", last_name: "Levi", phone: "2125550002", dob: "1890-01-01", emergency_name: "Josh Farner", emergency_phone: "2125550003", emergency_relationship: "Guardian", job_id: 5, production_id: 1, role: "Ian")
Cate = User.create!(email: "ozzymolloy@cat.com", password_digest: "password", first_name: "Ozzy", last_name: "Molloy", phone: "2125550004", dob: "1890-02-01", emergency_name: "Scout Cox", emergency_phone: "2125550005", emergency_relationship: "Guardian", job_id: 5, production_id: 1, role: "Cate")
Soldier = User.create!(email: "beckettfay@cat.com", password_digest: "password", first_name: "Beckett", last_name: "Fay", phone: "2125550006", dob: "1890-03-01", emergency_name: "Joey Rice", emergency_phone: "2125550007", emergency_relationship: "Guardian", job_id: 5, production_id: 1, role: "Soldier")
Director = User.create!(email: "janedoe@aol.com", password_digest: "password", first_name: "Jane", last_name: "Doe", phone: "2125550008", dob: "1890-04-01", emergency_name: "John Doe", emergency_phone: "2125550009", emergency_relationship: "Friend", job_id: 2, production_id: 1)
ASM = User.create!(email: "bmunari@fake.com", password_digest: "password", first_name: "Bruno", last_name: "Munari", phone: "2125550020", dob: "1890-10-01", emergency_name: "Bobby Munari", emergency_phone: "2125550021", emergency_relationship: "Husband", job_id: 3, production_id: 1)
Dramaturg = User.create!(email: "Michel Houellebecq", password_digest: "password", first_name: "Michel", last_name: "Houellebecq", phone: "2125550022", dob: "1890-11-01", emergency_name: "Made-Up Houellebecq", emergency_phone: "2125550023", emergency_relationship: "Sister", job_id: 4, production_id: 1)





# puts "Seeding reports..."
# rehearsal reports

# performance reports


# puts "Seeding daily calls..."


puts "Done seeding!"