import { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import type { RootState, AppDispatch } from "../app/store";
import { fetchUsers } from "../features/usersSlice";
import { UserCard } from "../shared/ui/UserCard";
import { User } from "../entities/User";

export const UserList: React.FC = () => {
  const dispatch = useDispatch<AppDispatch>();
  const { users, loading, error } = useSelector((state: RootState) => state.users);

  useEffect(() => {
    dispatch(fetchUsers());
  }, [dispatch]);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error: {error}</p>;

  return (
    <div className="grid grid-cols-3 gap-4">
      {users.map((user: User) => (
        <UserCard key={user.id} user={user} />
      ))}
    </div>
  );
};