# KRISHI MITRA - A ML Approach For Crop Fertilizer Recommendation And Equipment Rental System

# 🔍 Overview:  
Krishi Mitra is an AI-powered mobile application built to assist farmers with data-driven decisions and modern farming tools. It integrates machine learning and cloud technologies to deliver personalized crop recommendations, fertilizer guidance, weather insights, equipment rentals, and government scheme updates.  

# 💡 Key Features:  
✅ Crop & Fertilizer Recommendation-  
• Predicts the best crop to grow using a Random Forest model trained on environmental data.  
• Recommends suitable fertilizers based on soil nutrients (N, P, K).  

✅ Equipment Rental System-  
• Rent farm equipment such as tractors, harvesters, cultivators, trailers, and sprayers.  
• Pricing calculated on an hourly basis, adjustable by the user.  

✅ Weather Forecasting-  
• Shows current and 7-day weather forecasts including temperature, humidity, rainfall, wind speed, and pressure.  
• Real-time data integration using sensors and OpenWeatherMap API.  

✅ Government Scheme Access-  
• Provides information on relevant agriculture-related government schemes.  

✅ Multi-language Support-  
• Available in English, Hindi, and Marathi.  
• Interface adapts dynamically based on language selection using GetX.  

✅ Secure User Authentication-  
• Firebase Authentication for sign-up, login, and profile management.  

# 🧰 Technologies Used:  
🔹Frontend - Flutter (Dart) with GetX for state & localization  
🔹Backend - Python (Flask) with RESTful APIs  
🔹Machine Learning - Scikit-learn – Random Forest model  
🔹Database - Firebase Firestore  
🔹Authentication - Firebase Authentication  
🔹Weather - OpenWeatherMap API  

# ⚙️ How It Works:  
✅User Authentication – Users register/login to access personalized features.  
✅Input Data – Users input soil and environmental data (N, P, K, temperature, humidity, rainfall).  
✅ML Prediction – Backend API returns crop and fertilizer recommendations using a trained model.  
✅Weather Info – Weather screen shows live updates and forecasts.  
✅Equipment Rent – Users can browse, select, and rent farm machinery by the hour.  
✅Schemes – Informative section on central/state government agricultural schemes.  
✅Language Support – Entire UI adjusts based on selected language for inclusivity.  

