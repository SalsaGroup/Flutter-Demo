// web/firebase-config.js

// Load environment variables from .env file
// web/firebase-config.js

let firebaseConfig = {
    apiKey: envVariables.apiKey,
    authDomain: envVariables.authDomain,
    projectId: envVariables.projectID,
    storageBucket: envVariables.storageBucket,
    messagingSenderId: envVariables.messagingSenderID,
    appId: envVariables.appID
};

// Initialize Firebase
console.log('FIREBASE_API_KEY:', process.env.FIREBASE_API_KEY);
firebase.initializeApp(firebaseConfig);


