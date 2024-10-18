import PrivateRoute from '@/components/PrivateRoute';

export default function AdminLayout({ children }) {
  return (
    <PrivateRoute>
      <div>
        {/* Aquí puedes agregar elementos comunes a todas las páginas de admin, como una barra de navegación */}
        {children}
      </div>
    </PrivateRoute>
  );
}
