import "./App.css";
import { React, useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./Home";
import Construction from "./Construction";
import NotFound from "./NotFound";
import UserNav from "./UserNav";
import PublicNav from "./PublicNav";
import Footer from "./Footer";
import SignUp from "./SignUp";
import Profile from "./Profile";
import Production from "./Production";
import Report from "./Report";
import axios from "axios";
import Login from "./Login";

function App() {
  const [users, setUsers] = useState([]);
  const [currentUser, setCurrentUser] = useState(null);

  useEffect(() => {
    axios
      .get("http://localhost:3000/users", {
        headers: { Authorization: `Bearer ${localStorage.getItem("jwt")}` },
      })
      .then((res) => {
        setUsers(res.data);
        // console.log(data);
      });
  }, []);

  function handleCurrentUser(user) {
    setCurrentUser(user);
  }

  return (
    <div>
      {/* <UserNav /> */}

      <Routes>
        <Route path="/" element={<Home />} />
        {/* <Route path="/" element={<Construction />} /> */}
        <Route
          path="/login"
          element={<Login handleCurrentUser={handleCurrentUser} />}
        />
        <Route path="/wip" element={<Construction />} />
        <Route path="*" element={<NotFound />} />
        <Route path="/signup" element={<SignUp />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/production" element={<Production />} />
        <Route path="/report" element={<Report />} />
      </Routes>
      <Footer />
    </div>
  );
}

// debugging issues with warring React versions:
// require("react-dom");
// window.React2 = require("react");
// console.log(window.React1 === window.React2);

export default App;
