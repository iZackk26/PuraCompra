import React, { useContext, useState } from 'react';
import { AuthContext } from '../context/AuthContext';
import Header from '../components/header/Header';
import UserAddress from '../components/dashboard/UserAddress';
import UserInformation from '../components/dashboard/UserInformation';
import OrdersHistory from '../components/dashboard/OrdersHistory';
import Orders from '../components/dashboard/Orders';
import AdminDashboard from './AdminDashboard';

export default function Account() {
  const { user, logout } = useContext(AuthContext);
  const [selectedView, setSelectedView] = useState('Account');
  const [selectedOption, setSelectedOption] = useState('Personal Information');

  if (!user) {
    return <p>Loading...</p>;
  }

  if (user.role === 'admin') {
    return <AdminDashboard />; // Render the AdminDashboard component if the user is an admin
  }

  const renderContent = () => {
    if (selectedView === 'Account') {
      switch (selectedOption) {
        case 'Personal Information':
          return <UserInformation />;
        case 'Address Book':
          return <UserAddress />;
        case 'Order History':
          return <OrdersHistory />;
        default:
          return null;
      }
    } else if (selectedView === 'Orders') {
      return <Orders />;
    }
  };

  return (
    <>
      <div className="min-h-screen flex flex-col">
        <Header />
        <div className="flex justify-between items-center border-b-2 pb-2 px-4">
          <div>
            <h1 className="text-2xl font-bold">Hi <strong>{user.name}</strong></h1>
          </div>
          <div className="flex justify-center space-x-8">
            <button 
              className={`mx-2 text-gray-600 hover:text-black ${selectedView === 'Account' ? 'font-bold' : ''}`}
              onClick={() => setSelectedView('Account')}
            >
              Account
            </button>
            <button 
              className={`mx-2 text-gray-600 hover:text-black ${selectedView === 'Orders' ? 'font-bold' : ''}`}
              onClick={() => setSelectedView('Orders')}
            >
              Orders
            </button>
          </div>
        </div>
        <div className="mt-4 flex">
          {selectedView === 'Account' && (
            <div className="w-1/4 mx-4">
              <ul className="space-y-3">
                <li 
                  className={`border p-2 rounded-lg hover:underline cursor-pointer ${selectedOption === 'Personal Information' ? 'font-bold' : ''} space-x-3`}
                  onClick={() => setSelectedOption('Personal Information')}
                >
                  Personal Information
                </li>
                <li 
                  className={`border p-2 rounded-lg hover:underline cursor-pointer ${selectedOption === 'Address Book' ? 'font-bold' : ''} space-x-3`} 
                  onClick={() => setSelectedOption('Address Book')}
                >
                  Address Book
                </li>
                <li 
                  className={`border p-2 rounded-lg hover:underline cursor-pointer ${selectedOption === 'Order History' ? 'font-bold' : ''} space-x-3`} 
                  onClick={() => setSelectedOption('Order History')}
                >
                  Order History
                </li>
              </ul>
            </div>
          )}
          <div className="w-full md:w-3/4 border-l-2 pl-4">
            <h2 className="text-xl font-semibold">{selectedView}</h2>
            {renderContent()}
          </div>
        </div>
      </div>
    </>
  );
}