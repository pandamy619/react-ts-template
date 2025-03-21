import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { UsersPage } from "./pages/UsersPage";

export const App: React.FC = () => (
  <Router>
    <Routes>
      <Route path="/" element={<UsersPage />} />
    </Routes>
  </Router>
);