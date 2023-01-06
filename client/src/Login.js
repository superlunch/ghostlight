import { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

function Login({ handleCurrentUser }) {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [currentUser, setCurrentUser] = useState([]);
  // const [isLoggedin, setIsLoggedin] = useState(false);

  const navigate = useNavigate();

  function handleLogin(e) {
    e.preventDefault();
    axios
      .post("http://localhost:3000/login", { email, password })
      .then((r) => {
        // handleCurrentUser(r.data.user);
        // localStorage.setItem("jwt", r.data.token);
        localStorage.setItem("user", JSON.stringify(r.data.user));
        // navigate("/pets")
        const loggedInUser = r.data;
        localStorage.setItem("jwt", loggedInUser.token);
        localStorage.setItem("current_user", JSON.stringify(loggedInUser));
        const current_user = ("current_user", loggedInUser.user);
        // setCurrentUser(current_user);
        console.log(`Hi, ${current_user.first_name}!`);
        // navigate("/pets");
        // window.location.reload();
      })
      .catch(function (error) {
        if (error.response) {
          console.log(error.response.data);
        } else if (error.request) {
          console.log(error.request);
        } else {
          console.log("Error", error.message);
        }
      });
  }

  return (
    <div>
      <form className="reg-form" onSubmit={handleLogin}>
        <input
          type="text"
          title="email"
          placeholder="email"
          value={email}
          className="form-fields"
          onChange={(e) => setEmail(e.target.value)}
        />
        <input
          type="password"
          title="password"
          placeholder="password"
          value={password}
          className="form-fields"
          onChange={(e) => setPassword(e.target.value)}
        />
        <button type="submit" className="login-button">
          login
        </button>
      </form>
    </div>
  );
}

export default Login;
