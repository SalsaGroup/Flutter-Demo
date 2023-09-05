// web/firebase-config.js

// Load environment variables from .env file
// web/firebase-config.js

let firebaseConfig = {
  apiKey: process.env.FIREBASE_API_KEY,
  authDomain: process.env.FIREBASE_AUTH_DOMAIN,
  projectId: process.env.FIREBASE_PROJECT_ID,
  storageBucket: process.env.FIREBASE_STORAGE_BUCKET,
  messagingSenderId: process.env.FIREBASE_MESSAGING_SENDER_ID,
  appId: process.env.FIREBASE_APP_ID
};

// Initialize Firebase
console.log('FIREBASE_API_KEY:', process.env.FIREBASE_API_KEY);
firebase.initializeApp(firebaseConfig);


