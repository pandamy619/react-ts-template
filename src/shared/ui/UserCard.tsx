import { User } from "../../entities/User";

interface UserCardProps {
  user: User;
}

export const UserCard: React.FC<UserCardProps> = ({ user }) => (
  <div className="border p-4 rounded-lg shadow-md">
    <h2 className="text-xl font-bold">{user.name}</h2>
    <p className="text-gray-600">{user.email}</p>
  </div>
);
