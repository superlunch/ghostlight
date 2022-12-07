import "./App.css";
import Home from "./Home";
import Construction from "./Construction";
import NotFound from "./NotFound";
import UserNav from "./UserNav";
import PublicNav from "./PublicNav";
import Footer from "./Footer";
import { Routes, Route } from "react-router-dom";


function App() {
  return (
    <div>
      {/* <UserNav /> */}
      <PublicNav />
      <Routes>
        <Route path="/" element={<Home />} />
        {/* <Route path="/" element={<Construction />} /> */}
        <Route path="/wip" element={<Construction />} />
        <Route path="*" element={<NotFound />} />
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
