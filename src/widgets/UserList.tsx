import { useEffect, useState } from "react";
import { User } from "../entities/User";
import { fetchUsers } from "../features/fetchUsers";
import { UserCard } from "../shared/ui/UserCard";

export const UserList: React.FC = () => {
  const [users, setUsers] = useState<User[]>([]);

  useEffect(() => {
    fetchUsers().then(setUsers);
  }, []);

  return (
    <div className="grid grid-cols-3 gap-4">
      {users.map((user) => (
        <UserCard key={user.id} user={user} />
      ))}
    </div>
  );
};