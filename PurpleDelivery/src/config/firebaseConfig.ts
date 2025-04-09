import app from '@react-native-firebase/app';
import auth from '@react-native-firebase/auth';
import firestore from '@react-native-firebase/firestore';

// Firebase configuration - replace with actual values
const firebaseConfig = {
  apiKey: "AIzaSyABC123...",
  authDomain: "purpledelivery-12345.firebaseapp.com",
  projectId: "purpledelivery-12345",
  storageBucket: "purpledelivery-12345.appspot.com",
  messagingSenderId: "1234567890",
  appId: "1:1234567890:web:abc123def456",
  measurementId: "G-ABC123DEF"
};

// Initialize Firebase
if (!app.apps.length) {
  app.initializeApp(firebaseConfig);
}

// Initialize services
const authInstance = auth();
const db = firestore();

export { authInstance as auth, db };
