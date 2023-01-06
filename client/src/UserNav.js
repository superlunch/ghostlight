import { Link } from "react-router-dom";
import { useNavigate } from "react-router-dom";

function UserNav() {

const navigate = useNavigate();

function handleLogout() {
  localStorage.clear("current_user");
  console.log("You have successfully logged out");
  navigate("/");
  window.location.reload();
}

  return (
    <nav className="user-nav">
      <Link className="logo" to="/">Ghostlite</Link>
      <div className="links">
        <Link className="nav-links" to="/dash">DASH</Link>
        <Link className="nav-links" to="/profile">PROFILE</Link>
        <Link className="nav-links" onClick={handleLogout}>LOGOUT</Link>
      </div>
    </nav>
  );
}

export default UserNav;
