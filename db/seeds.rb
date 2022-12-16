puts "Seeding users..."

SM = User.create(email: "coxscout@gmail.com", password: "password", first_name: "Scout", last_name: "Cox", phone: "4235447613", dob: "1998-06-17", emergency_name: "Kaytie Scott", emergency_phone: "2125550001", emergency_relationship: "Roommate", id: 1, production_id: 1, is_admin: true)

Ian = User.create(email: "benjilevi@cat.com", password: "password", first_name: "Benji", last_name: "Levi", phone: "2125550002", dob: "1890-01-01", emergency_name: "Josh Farner", emergency_phone: "2125550003", emergency_relationship: "Guardian", job_id: 10, production_id: 1, role: "Ian")

Cate = User.create(email: "ozzymolloy@cat.com", password: "password", first_name: "Ozzy", last_name: "Molloy", phone: "2125550004", dob: "1890-02-01", emergency_name: "Scout Cox", emergency_phone: "2125550005", emergency_relationship: "Guardian", job_id: 10, production_id: 1, role: "Cate")

Soldier = User.create(email: "beckettfay@cat.com", password: "password", first_name: "Beckett", last_name: "Fay", phone: "2125550006", dob: "1890-03-01", emergency_name: "Joey Rice", emergency_phone: "2125550007", emergency_relationship: "Guardian", job_id: 10, production_id: 1, role: "Soldier")

Director = User.create(email: "janedoe@aol.com", password: "password", first_name: "Jane", last_name: "Doe", phone: "2125550008", dob: "1890-04-01", emergency_name: "John Doe", emergency_phone: "2125550009", emergency_relationship: "Friend", job_id: 2, production_id: 1)

LD = User.create(email: "toddevlin@gmail.com", password: "password", first_name: "Tod", last_name: "Devlin", phone: "2125550010", dob: "1890-05-01", emergency_name: "Janet Devlin", emergency_phone: "2125550011", emergency_relationship: "Wife", job_id: 3, production_id: 1)

SFX = User.create(email: "desmondo@dog.io", password: "password", first_name: "Desmond", last_name: "Dogg", phone: "2125550012", dob: "1890-06-01", emergency_name: "Sansa Ibiza", emergency_phone: "2125550013", emergency_relationship: "Best friend", job_id: 4, production_id: 1)

CD = User.create(email: "sophie@cat.com", password: "password", first_name: "Sophie", last_name: "Hackl", phone: "2125550014", dob: "1890-07-01", emergency_name: "Molly Cat", emergency_phone: "2125550015", emergency_relationship: "Roommate", job_id: 5, production_id: 1)

SD = User.create(email: "vito33@hotmail.com", password: "password", first_name: "Michael", last_name: "Andolini", phone: "2125550016", dob: "1890-08-01", emergency_name: "Diane Keaton", emergency_phone: "2125550017", emergency_relationship: "Wife", job_id: 6, production_id: 1)

PD = User.create(email: "sickoseeding@alrea.dy", password: "password", first_name: "Sick", last_name: "O'Seeding", phone: "2125550018", dob: "1890-09-01", emergency_name: "Marshall McLuhan", emergency_phone: "2125550019", emergency_relationship: "Self", contact_notes: "Just going to start using random author names at this point", job_id: 7, production_id: 1)

ASM = User.create(email: "bmunari@fake.com", password: "password", first_name: "Bruno", last_name: "Munari", phone: "2125550020", dob: "1890-10-01", emergency_name: "Bobby Munari", emergency_phone: "2125550021", emergency_relationship: "Husband", job_id: 8, production_id: 1)

Dramaturg = User.create(email: "Michel Houellebecq", password: "password", first_name: "Michel", last_name: "Houellebecq", phone: "2125550022", dob: "1890-11-01", emergency_name: "Margot Houellebecq", emergency_phone: "2125550023", emergency_relationship: "Sister", job_id: 9, production_id: 1)


puts "Seeding teams..."

cast = Team.create(team_name: "Cast")
creative = Team.create(team_name: "Creative")
crew = Team.create(team_name: "Crew")
management = Team.create(team_name: "Management")


puts "Seeding productions..."

prod1 = Production.create(prod_title: "Blasted")


puts "Seeding jobs..."

Job.create(title: "Stage Manager", team_id: 4)
Job.create(title: "Director", team_id: 2)
Job.create(title: "Lighting Designer", team_id: 2)
Job.create(title: "Sound Designer", team_id: 2)
Job.create(title: "Costume Designer", team_id: 2)
Job.create(title: "Set Designer", team_id: 2)
Job.create(title: "Prop Designer", team_id: 2)
Job.create(title: "Assistant Stage Manager", team_id: 4)
Job.create(title: "Dramaturg", team_id: 2)
Job.create(title: "Actor", team_id: 1)
Job.create(title: "Crew", team_id: 3)


# puts "Seeding reports..."
# rehearsal reports

# performance reports


# puts "Seeding daily calls..."


puts "Done seeding!"