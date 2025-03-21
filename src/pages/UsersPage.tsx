import { UserList } from "../widgets/UserList";

export const UsersPage: React.FC = () => (
  <div className="container mx-auto p-4">
    <h1 className="text-2xl font-bold mb-4">Список пользователей</h1>
    <UserList />
  </div>
);