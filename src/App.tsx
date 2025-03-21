import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { Provider } from "react-redux";
import { store } from "./app/store";
import { UsersPage } from "./pages/UsersPage";

export const App: React.FC = () => (
  <Provider store={store}>
    <Router>
      <Routes>
        <Route path="/" element={<UsersPage />} />
      </Routes>
    </Router>
  </Provider>
);