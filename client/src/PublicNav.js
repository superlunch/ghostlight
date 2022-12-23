import { Link } from "react-router-dom";

function PublicNav() {
  return (
    <nav className="pub-nav">
      <Link className="logo" to="/">
        Ghostlite
      </Link>
    </nav>
  );
}

export default PublicNav;
