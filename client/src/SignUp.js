import React, { useState } from "react";
import PublicNav from "./PublicNav";
import { useNavigate } from "react-router-dom";
import axios from "axios";

// do toggle for SM vs other
// make separate footers for scroll vs no scroll
// admin???

function SignUp() {
  const userDetails = JSON.parse(localStorage.getItem("current_user"));
  const currentUser = userDetails.user;

  const [isEditingUser, setIsEditingUser] = useState(false);

  const [email, setEmail] = useState(currentUser.email);
  const [password, setPassword] = useState(currentUser.password);

  const [first_name, setFirst_name] = useState(currentUser.name);
  const [last_name, setLast_name] = useState(currentUser.age);
  const [phone, setPhone] = useState(currentUser.phone);
  const [dob, setDob] = useState(currentUser.dob);
  const [emergency_name, setEmergency_name] = useState(
    currentUser.emergency_name
  );
  const [emergency_phone, setEmergency_phone] = useState(
    currentUser.emergency_phone
  );
  const [emergency_relationship, setEmergency_relationship] = useState(
    currentUser.emergency_relationship
  );
  const [medical_info, setMedical_info] = useState(currentUser.medical_info);
  const [contact_notes, setContact_notes] = useState(currentUser.contact_notes);
  const [job_id, setJob_id] = useState(currentUser.job_id);
  const [production_id, setProduction_id] = useState(currentUser.production_id);
  const [is_admin, setIs_admin] = useState(currentUser.is_admin);
  const [role, setRole] = useState(currentUser.role);

  const navigate = useNavigate();

  function handleEditUser(e) {
    // e.preventDefault();
    axios.patch(`http://localhost:3000/users/${currentUser.id}`, {
      email: email,
      password: password,
      first_name: first_name,
      last_name: last_name,
      phone: phone,
      dob: dob,
      emergency_name: emergency_name,
      emergency_phone: emergency_phone,
      emergency_relationship: emergency_relationship,
      medical_info: medical_info,
      contact_notes: contact_notes,
      job_id: job_id,
      production_id: production_id,
      is_admin: is_admin,
      role: role,
    });
    console.log({
      email: email,
      first_name: first_name,
      last_name: last_name,
      phone: phone,
    });
    handleLogout();
  }

  function handleDelete() {
    fetch(`http://localhost:3000/users/${currentUser.id}`, {
      method: "DELETE",
    });
    localStorage.clear("current_user");
    alert(`Sorry to see you go, ${currentUser.first_name}!`);
    navigate("/");
    window.location.reload();
  }

  function handleLogout() {
    localStorage.clear("current_user");
    console.log("You have successfully logged out");
    navigate("/");
    window.location.reload();
  }

  return (
    <div>
      <PublicNav />
      <div className="signup-cont">
        <h2>SIGN-UP</h2>
        <div className="line2" />
        <br />
        <form className="signup-form">
          <div className="signup-label">email & password</div>
          <input
            type="text"
            title="email"
            placeholder="email"
            value={email}
            className="signup-fields"
            onChange={(e) => setEmail(e.target.value)}
          />
          <input
            type="password"
            title="password"
            placeholder="●●●●●●●●"
            value={password}
            className="signup-fields"
            onChange={(e) => setPassword(e.target.value)}
          />
          <br />
          <div className="signup-label">personal info</div>
          <input
            type="text"
            title="first name"
            placeholder="first name"
            value={first_name}
            className="signup-fields"
            onChange={(e) => setFirst_name(e.target.value)}
          />
          <input
            type="text"
            title="last name"
            placeholder="last name"
            value={last_name}
            className="signup-fields"
            onChange={(e) => setLast_name(e.target.value)}
          />
          <input
            type="text"
            title="phone"
            placeholder="phone"
            value={phone}
            className="signup-fields"
            onChange={(e) => setPhone(e.target.value)}
          />
          <input
            type="date"
            title="date of birth"
            placeholder="date of birth"
            value={dob}
            className="signup-fields"
            onChange={(e) => setDob(e.target.value)}
          />
          <br />
          <div className="signup-label">emergency contact</div>
          <input
            type="text"
            title="contact name"
            placeholder="name"
            value={emergency_name}
            className="signup-fields"
            onChange={(e) => setEmergency_name(e.target.value)}
          />
          <input
            type="text"
            title="contact phone"
            placeholder="phone"
            value={emergency_phone}
            className="signup-fields"
            onChange={(e) => setEmergency_phone(e.target.value)}
          />
          <input
            type="text"
            title="contact relationship"
            placeholder="relationship"
            value={emergency_relationship}
            className="signup-fields"
            onChange={(e) => setEmergency_relationship(e.target.value)}
          />
          <br />
          <div className="signup-label">other</div>
          <input
            type="text"
            title="medical info"
            placeholder="medical info"
            value={medical_info}
            className="signup-fields"
            onChange={(e) => setMedical_info(e.target.value)}
          />
          <input
            type="text"
            title="notes"
            placeholder="anything else your team should know about your needs?"
            value={contact_notes}
            className="signup-fields"
            onChange={(e) => setContact_notes(e.target.value)}
          />
          <button type="submit" className="signup-button">
            create account
          </button>
        </form>
      </div>
    </div>
  );
}

export default SignUp;
