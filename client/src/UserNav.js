import { Link } from "react-router-dom";
// import { useNavigate } from "react-router-dom";

function UserNav() {
  //   const navigate = useNavigate();

  return (
    <nav className="user-nav">
      <Link className="logo" to="/">Ghostlight</Link>
      <div className="links">
        <Link className="nav-links" to="/dash">DASH</Link>
        <Link className="nav-links" to="/profile">PROFILE</Link>
        <Link className="nav-links" to="/logout">LOGOUT</Link>
      </div>
    </nav>
  );
}

export default UserNav;
