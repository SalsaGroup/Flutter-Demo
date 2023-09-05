// web/firebase-config.js

// Load environment variables from .env file
// web/firebase-config.js

let firebaseConfig = {
    apiKey: "AIzaSyDusZC28LsEBVgso3fHcYlupGLLfUO3mak",
    authDomain: "kitchenai-cf3fb.firebaseapp.com",
    projectId: "kitchenai-cf3fb",
    storageBucket: "kitchenai-cf3fb.appspot.com",
    messagingSenderId: "497667047418",
    appId: "1:497667047418:web:4666c7d07f86ddc430ee43"
};

// Initialize Firebase
console.log('FIREBASE_API_KEY:', process.env.FIREBASE_API_KEY);
firebase.initializeApp(firebaseConfig);


