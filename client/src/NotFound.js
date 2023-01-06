import React from "react";
// import PublicNav from "./PublicNav";

// figure out footer
// link src4 to home

function NotFound() {
  return (
    <div>
      {/* <PublicNav /> */}
      <div className="app-body">
        <div>
          <p className="title">Hold, please.</p>
          <br />
        </div>
        <div>
          <br />
          <a href="/">
            <img src="source-4.png" className="src4" alt="logo" />
          </a>
        </div>
        <div>
          <h1 className="homebody">
            Looks like this page doesn't exist yet...
          </h1>
        </div>
      </div>
    </div>
  );
}

export default NotFound;
