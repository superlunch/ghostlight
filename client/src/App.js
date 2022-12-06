import "./App.css";
import Home from "./Home";
import NotFound from "./NotFound";
import { Routes, Route } from "react-router-dom";

function App() {
  return (
    <div>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="*" element={<NotFound />} />
      </Routes>
    </div>
  );
}

require("react-dom");
window.React2 = require("react");
console.log(window.React1 === window.React2);

export default App;
