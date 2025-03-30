import 'package:get/get.dart';

class LocalString extends Translations{
  @override
  Map<String,Map<String,String>>get keys=>{
    'en_US': {
  "hours": "Hours:",
  "total": "Total: ",
  "equipments": "Equipments: ",
  "here_is_your_receipt": "Here's your receipt.",
  "total_equipments": "Total Equipments: ",
  "total_price": "Total Price: ",
  "delivering_to": "Delivering to: ",
  "thank_you_order": "Thank you for your order!",
  "estimated_delivery": "Estimated Delivery Time is in 1-2 days",
  "confirm_payment": "Confirm Payment",
  "cancel": "Cancel",
  "yes": "Yes",
  "checkout": "Checkout",
  "pay_now": "Pay Now",
      'cart': 'Cart',
      'clear_cart_confirmation': 'Are you sure you want to clear the cart?',
      'cart_empty': 'Cart is empty..',
      'go_to_checkout': 'Go to Checkout',
      'empty_cart_message': 'Your cart is empty. Please add items before proceeding.',
      'deliver_now': 'Deliver now',
      'your_location': 'Your Location',
      'enter_address': 'Enter address...',
      'save': 'Save',
      'free_delivery': 'Free Delivery',
      'delivery_fee': 'Delivery Fee',
      'delivery_time': 'Delivery Time',
      'in_1_2_days': 'In 1-2 days',
      // Equipment categories
      'tractors': 'Tractors',
      'harvesters': 'Harvesters',
      'cultivators': 'Cultivators',
      'trailers': 'Trailers',
      'sprayers': 'Sprayers',
      'add_to_cart': 'Add to Cart',
      "phone_label": "Phone Number",
  "phone_required": "Phone number is required",
  "invalid_phone": "Invalid phone number format. Please enter a 10-digit Indian phone number.",
        'welcome_title': 'Welcome',
        'next_button': 'Next',
        'note_title': 'Note',
        'important_note_title': 'Important Note',
        'note_content': 'Please collect the details of Nitrogen, Potassium, and Phosphorus from the nearby laboratory. This data is essential for crop prediction and fertilizer recommendation.',
        'ensure_data_accuracy': 'Ensure the data is accurate and submitted on time for analysis.',
  "email_label": "Email",
  "password_label": "Password",
  "forgot_password": "Forgot Password?",
  "login_button": "Login",
  "register_prompt": "Don't have an account?",
  "register_here": "Register here",
  "email_required": "Email is required.",
  "invalid_email": "Please enter a valid email.",
  "password_required": "Password is required.",
  "password_too_short": "Password must be at least 6 characters long.",
  "login_success": "Login successful!",
  "email_not_found": "No user found for that email.",
  "wrong_password": "Incorrect password.",
  "login_failed": "Login failed. Please try again.",
  "register_title": "R E G I S T E R",
  "username_label": "Username",
  "confirm_password_label": "Confirm Password",
  "register_button": "Register",
  "login_prompt": "Already have an account?",
  "login_here": "Login Here",
  "login_title": "L O G I N",
      'clouds': 'Cloudy',
      'mist': 'Mist',
      'smoke': 'Smoke',
      'haze': 'Haze',
      'dust': 'Dust',
      'fog': 'Fog',
      'rain': 'Rain',
      'drizzle': 'Drizzle',
      'shower_rain': 'Shower Rain',
      'thunderstorm': 'Thunderstorm',
      'clear': 'Clear',
      'value': 'value',
      'Please enter': 'Please enter',
      'Enter a value between': 'Enter a value between',
      'Valid range': 'Valid range',
      'Predicted Crop': 'Predicted Crop',
      'Fertilizer Recommendation': 'Fertilizer Recommendation',
      'Cancel': 'Cancel',
      'Clear': 'Clear',
      'crops.Rice': 'Rice',
      'crops.Maize': 'Maize',
      'crops.ChickPea': 'Chick Pea',
      'crops.KidneyBeans': 'Kidney Beans',
      'crops.PigeonPeas': 'Pigeon Peas',
      'crops.MothBeans': 'Moth Beans',
      'crops.MungBean': 'Mung Bean',
      'crops.Blackgram': 'Black Gram',
      'crops.Lentil': 'Lentil',
      'crops.Pomegranate': 'Pomegranate',
      'crops.Banana': 'Banana',
      'crops.Mango': 'Mango',
      'crops.Grapes': 'Grapes',
      'crops.Watermelon': 'Watermelon',
      'crops.Muskmelon': 'Muskmelon',
      'crops.Apple': 'Apple',
      'crops.Orange': 'Orange',
      'crops.Papaya': 'Papaya',
      'crops.Coconut': 'Coconut',
      'crops.Cotton': 'Cotton',
      'crops.Jute': 'Jute',
      'crops.Coffee': 'Coffee',

      'fertilizers.NPK': 'NPK 10-26-26 or 20-20-0',
      'fertilizers.SSP': 'Single Super Phosphate (SSP) / DAP',
      'fertilizers.MOP': 'Muriate of Potash (MOP)',
      'fertilizers.SSP_MOP': 'Single Super Phosphate (SSP) / DAP, Muriate of Potash (MOP)',
      'fertilizers.Urea': 'Urea/Ammonium Sulfate',
      'fertilizers.Urea_MOP': 'Urea/Ammonium Sulfate, Muriate of Potash (MOP)',
      'fertilizers.Urea_SSP_MOP': 'Urea/Ammonium Sulfate, Single Super Phosphate (SSP) / DAP, Muriate of Potash (MOP)',
      'fertilizers.Urea_SSP': 'Urea/Ammonium Sulfate, Single Super Phosphate (SSP) / DAP',
      "cropPrediction": "Crop Prediction",
      "Nitrogen": "Nitrogen",
      "Phosphorus": "Phosphorus",
      "Potassium": "Potassium",
      "Temperature": "Temperature",
      "Humidity": "Humidity",
      "Rainfall": "Rainfall",
      "kg/ha": "kg/ha",
      "°C": "°C",
      "%": "%",
      "mm": "mm",
      "predictCrop": "Predict Crop",
      "clearInputs": "Clear Inputs",
      "confirmClear": "Confirm Clear",
      "clearInputConfirmation": "Are you sure you want to clear the input fields?",
      "enterValue": "Please enter a value for {label}.",
      "validRange": "Value must be between {min} and {max}.",
      "validRangeMessage": "Value should be between {min} {unit} and {max} {unit}.",
      "predictedCrop": "The predicted crop is: {crop}",
      "fertilizerRecommendation": "Recommended fertilizer: {fertilizer}",
      "error": "Error {statusCode}: {reasonPhrase}",
      "exception": "Exception occurred: {error}",
      "please_enter_value": "Please enter {label} value",
      "enter_value_between": "Enter a value between {min} and {max}",
      "valid_range": "Valid range: {min} - {max} {unit}",
      // drawer and appbar
      "home": "Home",
      "profile": "Profile",
      "weather": "Weather",
      "aboutUs": "About Us",
      "logout": "Logout",
      "selectLanguage": "Select Language",
      "english": "English",
      "hindi": "Hindi",
      "marathi": "Marathi",
      // about us
      "about_us_title": "About Us",
      "about_krishi_mitra": "About Krishi Mitra",
      "welcome_message": "Welcome to Krishi Mitra! Our app helps farmers use the latest technology to improve their farming and grow more crops.",
      "name_explanation": "'Krishi' means farming, and 'Mitra' means friend. So, 'Krishi Mitra' means 'Friend of Farmers.' This is a perfect name because our app is all about helping farmers.",
      "thank_you_message": "Thank you for using Krishi Mitra. We are here to help you every step of the way and hope our app makes your farming better and easier!",
      // profile
      "profile_title": "Profile",
      "name_label": "Name",
      "error_fetching_data": "Error fetching user data",
      "no_user_data": "No user data found",
      // weather
      "weather_title": "Weather",
      "enter_city": "Enter city name",
      "loading_city": "Loading city...",
      "humidity_label": "Humidity: {value}%",
      "wind_speed_label": "Wind Speed: {value} m/s",

      // crop prediction
      "nitrogen": "Nitrogen",
      "phosphorus": "Phosphorus",
      "potassium": "Potassium",
      "temperature": "Temperature",
      "humidity": "Humidity",
      "rainfall": "Rainfall",
      "selectState": "Select State",
      "prediction": "Prediction",
      "pleaseEnterValue": "Please enter value",
      "valueBetween": "Enter a value between {min} and {max}",
      "selectStateError": "Please select a state",
      "loading": "Loading",
      "networkError": "Error: {statusCode} {reasonPhrase}",
      // Rent page translations
      "rentTitle": "Equipment Rental",
      "rentTractors": "Tractors",
      "rentHarvesters": "Harvesters",
      "rentCultivators": "Cultivators",
      "rentTrailers": "Trailers",
      "rentSprayers": "Sprayers",
      "equipmentDescription": "Description",
      "equipmentPrice": "Price: {price}",
      "addToCart": "Add to Cart",
      "removeFromCart": "Remove from Cart",
      "totalPrice": "Total Price",
      "totalItems": "Total Items",
      "clearCart": "Clear Cart",
      "receiptGenerated": "Receipt Generated",
      "formatDouble": "{value} INR",
      //home
      'home_page.title': 'Government Schemes',
      'home_page.description': 'Explore various government schemes designed to support and empower farmers. Click on the links below to learn more about each scheme.',
      'home_page.key_schemes': 'Here are some key schemes and programs available for farmers:',
      // Krishi Mitra
      "krishi_mitra": "Krishi Mitra",
      // home
      'krishi_dss': 'KRISHI DSS',
      'dgces': 'DGCES',
      'krishi_mapper': 'KRISHI MAPPER',
      'upag': 'UPAG',
      'sathi': 'SATHI',
      'pm_kisan': 'PM KISAN SAMMAN NIDHI',
      'pmfby': 'Pradhan Mantri Fasal Bima Yojana',
      'nfsm': 'NATIONAL FOOD SECURITY MISSION',
      'rkvy': 'RASHTRIYA KRISHI VIKAS YOJANA',
      'pdmc': 'PDMC',
      'nhb_inspection': 'NHB INSPECTION',
      'ami': 'AGRICULTURE MARKETING INFRASTRUCTURE(AMI)',
      'seednet': 'SEEDNET',
      'acabc': 'ACABC',
      'nf': 'NATURAL FARMING(NF)',
      'natural_bamboo_mission': 'NATURAL BAMBOO MISSION',
      'national_beekeeping_mission': 'NATIONAL BEEKEEPING AND HONEY MISSION',
      'mt_chc_portal': 'M&T CHC PORTAL',
      'nmeo': 'NMEO',
      'agroforestry': 'AGROFORESTORY',
      'rad': 'RAINFED AREA DEVELOPMENT(RAD)',
      'mkisan': 'MKISAN',
      'soil_health_card': 'SOIL HEALTH CARD',
      'agriinfra': 'AGRIINFRA',
      'enam': 'NATIONAL AGRICULTURE MARKET',
      'farms_farm_machinery': 'FARMS FARM MACHINERY SOLUTIONS',
      'kisan_call_center': 'KISAN CALL CENTER DIAL 1800 180 1551',
      'doubling_farmers_income': 'DOUBLING OF FARMER\'S INCOME',
      'mncfc': 'MNCFC',
      //rent
      'john_deere_5075e': "John Deere 5075E",
      'john_deere_5075e_desc': "The John Deere 5075E is a 75 HP tractor, equipped with a 2900 CC engine, 12-speed gearbox, "
          "and a lift capacity of 2000 kg. It is known for its reliability and efficiency, featuring oil-immersed brakes, "
          "ADDC hydraulic control, and a 2050 mm wheelbase."
          "\nRental Price: ₹3000/hour."
          "\nMRP: ₹10,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'mahindra_jivo_225': "Mahindra Jivo 225 DI",
      'mahindra_jivo_225_desc': "The Mahindra Jivo 225 DI is a 20 HP mini tractor, "
          "with 8 forward and 4 reverse gears, and a lift capacity of 750 kg. It features oil-immersed brakes and a 22-liter fuel tank. "
          "Known for its multi-purpose use."
          "\nRental Price: ₹1000/hour."
          "\nMRP: ₹5,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'john_deere_w50': "John Deere W50 Combine Harvester",
      'john_deere_w50_desc': "The John Deere W50 combine harvester comes with a 75 HP turbocharged engine, "
          "featuring a dry-type air cleaner and 4 cylinders. It is technologically advanced."
          "\nRental Price: ₹2000/hour."
          "\nMRP: ₹15,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'mahindra_arjun_605': "Mahindra Arjun 605",
      'mahindra_arjun_605_desc': "The Mahindra Arjun 605 combine harvester is known for its excellent mileage and various features."
          "\nRental Price: ₹1500/hour."
          "\nMRP: ₹10,00,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'mahindra_cultivator': "Mahindra Cultivator",
      'mahindra_cultivator_desc': "The Mahindra Cultivator is a multi-purpose tool, suitable for 35-65 HP tractors."
          "\nRental Price: ₹1000/hour."
          "\nMRP: ₹20,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'swaraj_spring_loaded': "Swaraj Spring Loaded Cultivator",
      'swaraj_spring_loaded_desc': "The Swaraj Spring Loaded Cultivator is suitable for 35 HP tractors."
          "\nRental Price: ₹800/hour."
          "\nMRP: ₹22,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'mc_mtl_nt_5m': "MC MTL NT 5M",
      'mc_mtl_nt_5m_desc': "The MC MTL-NT-5M is suitable for 50+ HP tractors."
          "\nRental Price: ₹1000/hour."
          "\nMRP: ₹50,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'sai_agro_four_wheel': "Sai Agro Four-Wheel Tipping 9",
      'sai_agro_four_wheel_desc': "The Sai Agro Four-Wheel Tipping 9 is designed for 70-90 HP tractors."
          "\nRental Price: ₹1500/hour."
          "\nMRP: ₹60,000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'neptune_hariyali_08': "Neptune Hariyali-08 Manual",
      'neptune_hariyali_08_desc': "The Neptune Hariyali-08 is a lightweight sprayer."
          "\nRental Price: ₹200/hour."
          "\nMRP: ₹2000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",

      'neptune_htp_gold': "Neptune HTP Gold Plus",
      'neptune_htp_gold_desc': "The Neptune HTP Gold Plus is a robust sprayer."
          "\nRental Price: ₹300/hour."
          "\nMRP: ₹3000."
          "\nPlease note, if the equipment is damaged during use, a 10% charge of the MRP will apply.",
    },
      //////////////////////////////////////////////////////////////////////////////////////////////////////
    'hi_IN':{
  "hours": "घंटे:",
  "total": "कुल: ",
  "equipments": "उपकरण: ",
  "here_is_your_receipt": "यहाँ आपकी रसीद है।",
  "total_equipments": "कुल उपकरण: ",
  "total_price": "कुल किंमत: ",
  "delivering_to": "डिलिव्हरी करत आहे: ",
  "thank_you_order": "आपके ऑर्डर के लिए धन्यवाद!",
  "estimated_delivery": "अनुमानित वितरण समय 1-2 दिन में है",
  "confirm_payment": "भुगतान की पुष्टि करें",
  "cancel": "रद्द करें",
  "yes": "हाँ",
  "checkout": "चेकआउट",
  "pay_now": "अभी भुगतान करें",
      'cart': 'कार्ट',
      'clear_cart_confirmation': 'क्या आप वाकई कार्ट को साफ करना चाहते हैं?',
      'cart_empty': 'कार्ट खाली है..',
      'go_to_checkout': 'चेकआउट पर जाएँ',
      'empty_cart_message': 'आपकी कार्ट खाली है। कृपया आगे बढ़ने से पहले आइटम जोड़ें।',
      'deliver_now': 'अब वितरित करें',
      'your_location': 'आपका स्थान',
      'enter_address': 'पता दर्ज करें...',
      'save': 'सहेजें',
      'free_delivery': 'फ्री डिलीवरी',
      'delivery_fee': 'डिलीवरी शुल्क',
      'delivery_time': 'डिलीवरी समय',
      'in_1_2_days': '1-2 दिनों में',
      // Equipment categories
      'tractors': 'ट्रैक्टर्स',
      'harvesters': 'हार्वेस्टर्स',
      'cultivators': 'कल्टीवेटर्स',
      'trailers': 'ट्रेलर्स',
      'sprayers': 'स्प्रेअर्स',
      'add_to_cart': 'कार्ट में डालें',
      "phone_label": "फोन नंबर",
  "phone_required": "फोन नंबर आवश्यक है",
  "invalid_phone": "अमान्य फोन नंबर प्रारूप। कृपया 10 अंकी भारतीय फोन नंबर दर्ज करें.",
        'welcome_title': 'स्वागत आहे',
        'note_title': 'नोट',
        'important_note_title': 'महत्वपूर्ण नोट',
        'note_content': 'कृपया निकटवर्ती प्रयोगशाळेतील नायट्रोजन, पोटॅशियम, आणि फॉस्फरसचे तपशील गोळा करा. हा डेटा पिकांच्या भाकितासाठी आणि खते शिफारसीसाठी अत्यंत आवश्यक आहे.',
        'ensure_data_accuracy': 'डेटा सटीक और समय पर प्रस्तुत करें।',
        'next_button': 'आगे',
  "login_title": "लॉगिन",
  "email_label": "ईमेल",
  "password_label": "पासवर्ड",
  "forgot_password": "पासवर्ड भूल गए?",
  "login_button": "लॉगिन करें",
  "register_prompt": "क्या आपका खाता नहीं है?",
  "register_here": "यहाँ पंजीकरण करें",
  "email_required": "ईमेल आवश्यक है।",
  "invalid_email": "कृपया एक मान्य ईमेल दर्ज करें।",
  "password_required": "पासवर्ड आवश्यक है।",
  "password_too_short": "पासवर्ड कम से कम 6 वर्ण लंबा होना चाहिए।",
  "login_success": "लॉगिन सफल!",
  "email_not_found": "उस ईमेल के लिए कोई उपयोगकर्ता नहीं मिला।",
  "wrong_password": "गलत पासवर्ड।",
  "login_failed": "लॉगिन विफल। कृपया पुनः प्रयास करें।",
  "register_title": "रजिस्टर",
  "username_label": "उपयोगकर्ता नाम",
  "confirm_password_label": "पासवर्ड की पुष्टि करें",
  "register_button": "रजिस्टर",
  "login_prompt": "पहले से खाता है?",
  "login_here": "यहां लॉगिन करें",
  "username_required": "Username is required.",
  "confirm_password_required": "Confirm password is required.",
  "passwords_do_not_match": "Passwords do not match.",
      'clouds': 'बादल',
      'mist': 'कोहरा',
      'smoke': 'धुआं',
      'haze': 'धुंध',
      'dust': 'धूल',
      'fog': 'कुहासा',
      'rain': 'बारिश',
      'drizzle': 'बूँदाबाँदी',
      'shower_rain': 'बारिश',
      'thunderstorm': 'आंधी-तूफान',
      'clear': 'साफ',
      'value':'मूल्य',
      'Please enter': 'कृपया प्रवेश करा',
      'Enter a value between': 'कृपया एक मूल्य प्रविष्ट करा',
      'Valid range': 'वैध श्रेणी',
      'Predicted Crop': 'भविष्यवाणी की गई फसल',
      'Fertilizer Recommendation': 'उर्वरक सिफारिश',
      'Cancel': 'रद्द करें',
      'Clear': 'साफ़ करें',
      'crops.Rice': 'चावल',
      'crops.Maize': 'मक्का',
      'crops.ChickPea': 'चने',
      'crops.KidneyBeans': 'राजमा',
      'crops.PigeonPeas': 'अरहर',
      'crops.MothBeans': 'मोटा चना',
      'crops.MungBean': 'मूंग',
      'crops.Blackgram': 'उड़द',
      'crops.Lentil': 'दाल',
      'crops.Pomegranate': 'अनार',
      'crops.Banana': 'केला',
      'crops.Mango': 'आम',
      'crops.Grapes': 'अंगूर',
      'crops.Watermelon': 'तरबूज',
      'crops.Muskmelon': 'खरबूज',
      'crops.Apple': 'सेब',
      'crops.Orange': 'संतरा',
      'crops.Papaya': 'पपीता',
      'crops.Coconut': 'नारियल',
      'crops.Cotton': 'रुई',
      'crops.Jute': 'जूट',
      'crops.Coffee': 'कॉफी',

      'fertilizers.NPK': 'NPK 10-26-26 या 20-20-0',
      'fertilizers.SSP': 'सिंगल सुपर फास्फेट (SSP) / DAP',
      'fertilizers.MOP': 'म्यूरिएट ऑफ पोटाश (MOP)',
      'fertilizers.SSP_MOP': 'सिंगल सुपर फास्फेट (SSP) / DAP, म्यूरिएट ऑफ पोटाश (MOP)',
      'fertilizers.Urea': 'यूरिया/अमोनियम सल्फेट',
      'fertilizers.Urea_MOP': 'यूरिया/अमोनियम सल्फेट, म्यूरिएट ऑफ पोटाश (MOP)',
      'fertilizers.Urea_SSP_MOP': 'यूरिया/अमोनियम सल्फेट, सिंगल सुपर फास्फेट (SSP) / DAP, म्यूरिएट ऑफ पोटाश (MOP)',
      'fertilizers.Urea_SSP': 'यूरिया/अमोनियम सल्फेट, सिंगल सुपर फास्फेट (SSP) / DAP',
  "cropPrediction": "फसल भविष्यवाणी",
  "Nitrogen": "नाइट्रोजन",
  "Phosphorus": "फॉस्फोरस",
  "Potassium": "पोटेशियम",
  "Temperature": "तापमान",
  "Humidity": "नमी",
  "Rainfall": "वृष्टि",
  "kg/ha": "किग्रा/हेक्टेयर",
  "°C": "°से",
  "%": "%",
  "mm": "मिमी",
  "predictCrop": "फसल की भविष्यवाणी करें",
  "clearInputs": "इनपुट साफ़ करें",
  "confirmClear": "साफ़ करने की पुष्टि करें",
  "clearInputConfirmation": "क्या आप सुनिश्चित हैं कि आप इनपुट फ़ील्ड को साफ़ करना चाहते हैं?",
  "enterValue": "{label} के लिए कृपया एक मान दर्ज करें।",
  "validRange": "मान {min} और {max} के बीच होना चाहिए।",
  "validRangeMessage": "{unit} में मान {min} और {max} के बीच होना चाहिए।",
  "predictedCrop": "भविष्यवाणी की गई फसल है: {crop}",
  "fertilizerRecommendation": "सिफारिश की गई उर्वरक: {fertilizer}",
  "error": "त्रुटि {statusCode}: {reasonPhrase}",
  "exception": "एक अपवाद हुआ: {error}",
  "please_enter_value": "कृपया {label} मान दर्ज करें",
  "enter_value_between": "एक ऐसा मान दर्ज करें जो {min} और {max} के बीच हो",
  "valid_range": "मान्य सीमा: {min} - {max} {unit}",
      'krishi_dss': 'कृषि डीएसएस',
      "home": "होम",
      "profile": "प्रोफाइल",
      "weather": "मौसम",
     // "cropPrediction": "फसल भविष्यवाणी",
      "aboutUs": "हमारे बारे में",
      "logout": "लॉगआउट",
      "selectLanguage": "भाषा चुनें",
      "english": "अंग्रेजी",
      "hindi": "हिंदी",
      "marathi": "मराठी",
      "about_us_title": "कृषि मित्र के बारे में",
      "about_krishi_mitra": "कृषि मित्र के बारे में",
      "welcome_message": "कृषि मित्र में आपका स्वागत है! हमारा ऐप किसानों को नवीनतम प्रौद्योगिकी का उपयोग करने में मदद करता है ताकि वे अपनी खेती को सुधार सकें और अधिक फसल उगा सकें।",
      "name_explanation": "'कृषि' का अर्थ है खेती, और 'मित्र' का अर्थ है दोस्त। इसलिए, 'कृषि मित्र' का मतलब है 'किसानों का दोस्त।' यह एक सही नाम है क्योंकि हमारा ऐप पूरी तरह से किसानों की मदद करने के बारे में है।",
      "thank_you_message": "कृषि मित्र का उपयोग करने के लिए धन्यवाद। हम आपकी हर कदम पर मदद करने के लिए यहां हैं और आशा करते हैं कि हमारा ऐप आपकी खेती को बेहतर और आसान बनाए!",
      "profile_title": "प्रोफाइल",
      "name_label": "नाम",
      "error_fetching_data": "उपयोगकर्ता डेटा प्राप्त करने में त्रुटि",
      "no_user_data": "कोई उपयोगकर्ता डेटा नहीं मिला",
      "weather_title": "मौसम",
      "enter_city": "शहर का नाम दर्ज करें",
      "loading_city": "शहर लोड हो रहा है...",
      "humidity_label": "आर्द्रता: {value}%",
      "wind_speed_label": "हवा की गति: {value} मीटर/सेकंड",
      "nitrogen": "नाइट्रोजन",
      "phosphorus": "फास्फोरस",
      "potassium": "पोटैशियम",
      "temperature": "तापमान",
      "humidity": "नमी",
      "rainfall": "वर्षा",
      "selectState": "राज्य चुनें",
      "prediction": "भविष्यवाणी",
      "pleaseEnterValue": "कृपया मान दर्ज करें",
      "valueBetween": "एक मान दर्ज करें {min} और {max} के बीच",
      "selectStateError": "कृपया एक राज्य चुनें",
      "loading": "लोड हो रहा है",
      "networkError": "त्रुटि: {statusCode} {reasonPhrase}",
      // Hindi translations for Rent page
      "rentTitle": "उपकरण किराए पर लें",
      "rentTractors": "ट्रैक्टर",
      "rentHarvesters": "हार्वेस्टर",
      "rentCultivators": "कृषि यंत्र",
      "rentTrailers": "ट्रेलर",
      "rentSprayers": "स्प्रेयर",
      "equipmentDescription": "विवरण",
      "equipmentPrice": "कीमत: {price}",
      "addToCart": "कार्ट में जोड़ें",
      "removeFromCart": "कार्ट से निकालें",
      "totalPrice": "कुल कीमत",
      "totalItems": "कुल आइटम",
      "clearCart": "कार्ट साफ़ करें",
      "receiptGenerated": "रसीद उत्पन्न हुई",
      "formatDouble": "{value} INR",
      'home_page.title': 'सरकारी योजनाएं',
      'home_page.description': 'किसानों को समर्थन और सशक्त बनाने के लिए डिज़ाइन की गई विभिन्न सरकारी योजनाओं का अन्वेषण करें। प्रत्येक योजना के बारे में अधिक जानने के लिए नीचे दिए गए लिंक पर क्लिक करें।',
      'home_page.key_schemes': 'यहां किसानों के लिए उपलब्ध कुछ प्रमुख योजनाएं और कार्यक्रम हैं:',
      "krishi_mitra": "कृषि मित्र",
      // home
     // 'krishi_dss': 'कृषि डीएसएस',
      'dgces': 'डीजीसीईएस',
      'krishi_mapper': 'कृषि मैपर',
      'upag': 'यूपीएजी',
      'sathi': 'साथी',
      'pm_kisan': 'पीएम किसान सम्मान निधि',
      'pmfby': 'प्रधानमंत्री फसल बीमा योजना',
      'nfsm': 'राष्ट्रीय खाद्य सुरक्षा मिशन',
      'rkvy': 'राष्ट्रीय कृषि विकास योजना',
      'pdmc': 'पीडीएमसी',
      'nhb_inspection': 'एनएचबी निरीक्षण',
      'ami': 'कृषि विपणन बुनियादी ढांचा (एएमआई)',
      'seednet': 'सीडनेट',
      'acabc': 'एसीएबीसी',
      'nf': 'प्राकृतिक खेती (एनएफ)',
      'natural_bamboo_mission': 'प्राकृतिक बांस मिशन',
      'national_beekeeping_mission': 'राष्ट्रीय मधुमक्खी पालन और शहद मिशन',
      'mt_chc_portal': 'एम एंड टी सीएचसी पोर्टल',
      'nmeo': 'एनएमईओ',
      'agroforestry': 'कृषिवनिकी',
      'rad': 'वर्षा सिंचित क्षेत्र विकास (आरएडी)',
      'mkisan': 'एमकिसान',
      'soil_health_card': 'मिट्टी स्वास्थ्य कार्ड',
      'agriinfra': 'कृषि इन्फ्रा',
      'enam': 'राष्ट्रीय कृषि बाजार',
      'farms_farm_machinery': 'फार्म्स फार्म मशीनरी सॉल्यूशंस',
      'kisan_call_center': 'किसान कॉल सेंटर डायल 1800 180 1551',
      'doubling_farmers_income': 'किसानों की आय को दोगुना करना',
      'mncfc': 'एमएनसीएफसी',
        // rent
      'john_deere_5075e': "जॉन डियर 5075E",
      'john_deere_5075e_desc': "जॉन डियर 5075E एक लोकप्रिय 75 HP ट्रैक्टर है जिसमें 2900 CC इंजन, "
          "12-स्पीड गियरबॉक्स और 2000 किग्रा उठाने की क्षमता है। यह 2-व्हील और 4-व्हील ड्राइव दोनों विकल्पों के साथ आता है, "
          "31.3 किमी/घंटा की शीर्ष गति और 64 PTO HP प्रदान करता है। यह अपनी विश्वसनीयता और दक्षता के लिए जाना जाता है,"
          " इसमें तेल-डूबे हुए ब्रेक, ADDC हाइड्रोलिक नियंत्रण और एक मजबूत डिज़ाइन के साथ 2050 मिमी व्हीलबेस है।"
          "\nक़ीमत: ₹3000/घंटा."
          "\nMRP: ₹10,00,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'mahindra_jivo_225': "महिंद्रा जीवो 225 DI",
      'mahindra_jivo_225_desc': "महिंद्रा जीवो 225 DI एक मिनी ट्रैक्टर है जिसमें 20 HP इंजन, "
          "8 फॉरवर्ड और 4 रिवर्स गियर हैं और इसमें 750 किग्रा उठाने की क्षमता है। यह 2-व्हील और 4-व्हील ड्राइव विकल्प प्रदान करता है, "
          "तेल-डूबे हुए ब्रेक और 22-लीटर ईंधन टैंक के साथ आता है। यह अपनी बहुमुखी प्रतिभा और उन्नत सुविधाओं के लिए जाना जाता है।"
          "\nक़ीमत: ₹1000/घंटा."
          "\nMRP: ₹5,00,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'john_deere_w50': "जॉन डियर W50 ग्रेन हार्वेस्टर",
      'john_deere_w50_desc': "जॉन डियर W50 कंबाइन हार्वेस्टर में 75 HP टर्बोचार्ज्ड इंजन है, "
          "जिसमें ड्राई-टाइप एयर क्लीनर और 4 सिलेंडर होते हैं, जो 2100 RPM उत्पन्न करते हैं। यह एक रास्प बार और स्पाइक टूथ थ्रेसिंग सिस्टम का उपयोग करता है "
          "और इसमें 240 लीटर का ईंधन टैंक है। उन्नत तकनीक और किफायती होने के कारण, जॉन डियर लगातार ग्राहक का विश्वास जीतता है।"
          "\nक़ीमत: ₹2000/घंटा."
          "\nMRP: ₹15,00,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'mahindra_arjun_605': "महिंद्रा अर्जुन 605",
      'mahindra_arjun_605_desc': "महिंद्रा अर्जुन 605 एक लोकप्रिय और किफायती ट्रैक्टर-चालित कंबाइन हार्वेस्टर है "
          "जिसमें 3532 सीसी, 4 सिलेंडर वाटर-कूल्ड इंजन है। इसमें ड्यूल ड्राई फ्रिक्शन क्लच, "
          "तेल-डूबे हुए डिस्क ब्रेक और 49 ब्लेड होते हैं। इसे उत्कृष्ट माइलेज के लिए जाना जाता है, और यह भारतीय किसानों द्वारा अत्यधिक पसंद किया जाता है।"
          "\nक़ीमत: ₹1500/घंटा."
          "\nMRP: ₹10,00,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'mahindra_cultivator': "महिंद्रा कल्टीवेटर",
      'mahindra_cultivator_desc': "महिंद्रा कल्टीवेटर एक बहुउद्देशीय और लोकप्रिय उपकरण है जो "
          "35-65 HP ट्रैक्टर के लिए उपयुक्त है। यह भूमि की तैयारी, जुताई और बीज बिस्तर की तैयारी के लिए प्रभावी है। "
          "इसे दक्षता, उपयोग में आसानी और किफायती होने के लिए जाना जाता है, इसमें 9-13 टाइन्स होते हैं।"
          "\nक़ीमत: ₹1000/घंटा."
          "\nMRP: ₹20,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'swaraj_spring_loaded': "स्वराज स्प्रिंग लोडेड कल्टीवेटर",
      'swaraj_spring_loaded_desc': "स्वराज स्प्रिंग लोडेड कल्टीवेटर एक लोकप्रिय 35 HP संगत मशीन है "
          "जिसमें 9 टाइन्स, 18 स्प्रिंग्स, 265 किग्रा वजन और 1860 मिमी कटिंग चौड़ाई है। "
          "इसे अपनी दक्षता, उन्नत तकनीक और किफायती होने के लिए जाना जाता है।"
          "\nक़ीमत: ₹800/घंटा."
          "\nMRP: ₹22,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'mc_mtl_nt_5m': "MC MTL NT 5M",
      'mc_mtl_nt_5m_desc': "MC MTL-NT-5M 50+ HP ट्रैक्टर के लिए एक गैर-टिपिंग ट्रेलर है, जिसमें आयाम होते हैं "
          "3048 x 1829 x 610 मिमी, 150 x 75 मिमी चेसिस, 5 मिमी फर्श और 2.5 मिमी साइड वॉल्स। "
          "इसमें 7.50 x 16 या 9.00 x 16 टायर, 50 मिमी रिंग हिच, और 75 मिमी एक्सल (वैकल्पिक ब्रेक) होते हैं।"
          "\nक़ीमत: ₹1000/घंटा."
          "\nMRP: ₹50,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'sai_agro_four_wheel': "साई एग्रो फोर व्हील टिपिंग 9",
      'sai_agro_four_wheel_desc': "साई एग्रो फोर व्हील टिपिंग 9 70-90 HP ट्रैक्टर के लिए बनाया गया है, "
          "जिसमें 200 x 75 मिमी मुख्य चेसिस, 4 मिमी फर्श शीट, 2 मिमी साइड वॉल्स और 80 मिमी एक्सल (वैकल्पिक ब्रेक) होते हैं।"
          "\nक़ीमत: ₹1500/घंटा."
          "\nMRP: ₹60,000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'neptune_hariyali_08': "नेपच्यून हरियाली-08 मैन्युअल",
      'neptune_hariyali_08_desc': "नेपच्यून हरियाली-08 मैन्युअल स्प्रेयर एक हल्का, टिकाऊ स्प्रेयर है जिसमें "
          "16-लीटर क्षमता, पीतल का प्रेशर चैंबर और 4 किग्रा का सकल वजन होता है। इसके आयाम होते हैं "
          "36 x 18 x 51.3 सेमी, जो किसानों के फसल उपचार कार्यों के लिए आदर्श है।"
          "\nक़ीमत: ₹200/घंटा."
          "\nMRP: ₹2000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",

      'neptune_htp_gold': "नेपच्यून HTP गोल्ड प्लस",
      'neptune_htp_gold_desc': "नेपच्यून HTP गोल्ड प्लस एक टिकाऊ कृषि पावर स्प्रेयर है, जो 3-5 HP के साथ आता है, "
          "जो 20-45 किग्रा/सेमी² प्रेशर प्रदान करता है। इसमें 40-50 उत्पादन, 3 x 30 प्लंजर होते हैं, "
          "और इसके आयाम 360 x 310 x 330 मिमी होते हैं। यह बड़े क्षेत्रों के लिए आदर्श है।"
          "\nक़ीमत: ₹300/घंटा."
          "\nMRP: ₹3000."
          "\nकृपया ध्यान दें, उपयोग के दौरान यदि उपकरण को क्षति होती है, तो MRP का 10% शुल्क लागू होगा।",
    },
////////////////////////////////////////////////////////////////////////////////////
    'mr_IN': {
  "hours": "तास:",
  "total": "एकूण: ",
  "equipments": "उपकरणे: ",
  "here_is_your_receipt": "येथे तुमची रसीद आहे.",
  "total_equipments": "एकूण उपकरणे: ",
  "total_price": "एकूण किंमत: ",
  "delivering_to": "डिलिव्हरी करत आहे: ",
  "thank_you_order": "तुमच्या ऑर्डर साठी धन्यवाद!",
  "estimated_delivery": "अनुमानित वितरण वेळ 1-2 दिवसांमध्ये आहे",
  "confirm_payment": "भुगतानाची पुष्टी करा",
  "cancel": "रद्द करा",
  "yes": "होय",
  "checkout": "चेकआउट",
  "pay_now": "आता पैसे द्या",
      'cart': 'कार्ट',
      'clear_cart_confirmation': 'तुम्हाला खरंच कार्ट साफ करायची आहे का?',
      'cart_empty': 'कार्ट रिकामी आहे..',
      'go_to_checkout': 'चेकआउट वर जा',
      'empty_cart_message': 'तुमची कार्ट रिकामी आहे. कृपया पुढे जाण्यापूर्वी वस्तू जोडा.',
      'deliver_now': 'आता वितरित करा',
      'your_location': 'तुमचा स्थान',
      'enter_address': 'पत्ता प्रविष्ट करा...',
      'save': 'जतन करा',
      'free_delivery': 'मोफत डिलीव्हरी',
      'delivery_fee': 'डिलीव्हरी शुल्क',
      'delivery_time': 'डिलीव्हरी वेळ',
      'in_1_2_days': '1-2 दिवसांत',
      // Equipment categories in Marathi
      'tractors': 'ट्रॅक्टर',
      'harvesters': 'हार्वेस्टर',
      'cultivators': 'कल्टिव्हेटर',
      'trailers': 'ट्रेलर',
      'sprayers': 'स्प्रेयर्स',
      'add_to_cart': 'कार्टमध्ये जोडा',
      "phone_label": "फोन नंबर",
      "phone_required": "फोन नंबर आवश्यक आहे",
      "invalid_phone": "अवैध फोन नंबर स्वरूप. कृपया 10 अंकी भारतीय फोन नंबर प्रविष्ट करा.",
        'welcome_title': 'स्वागत आहे',
        'note_title': 'नोट',
        'important_note_title': 'महत्वाचे नोट',
        'note_content': 'कृपया जवळच्या प्रयोगशाळेतून नायट्रोजन, पोटॅशियम, आणि फॉस्फरसची माहिती गोळा करा. हा डेटा पिकांच्या भाकितासाठी आणि खतांच्या शिफारसीसाठी महत्त्वाचा आहे.',
        'ensure_data_accuracy': 'डेटा अचूक आणि वेळेवर सादर करा.',
        'next_button': 'पुढे',
  "login_title": "लॉगिन",
  "email_label": "ईमेल",
  "password_label": "पासवर्ड",
  "forgot_password": "पासवर्ड विसरलात?",
  "login_button": "लॉगिन",
  "register_prompt": "तुमच्याकडे खाती नाही का?",
  "register_here": "येथे नोंदणी करा",
  "email_required": "ईमेल आवश्यक आहे.",
  "invalid_email": "कृपया वैध ईमेल प्रविष्ट करा.",
  "password_required": "पासवर्ड आवश्यक आहे.",
  "password_too_short": "पासवर्ड कमीत कमी 6 अक्षरे असावा.",
  "login_success": "लॉगिन यशस्वी!",
  "email_not_found": "त्या ईमेलसाठी कोणताही वापरकर्ता सापडला नाही.",
  "wrong_password": "चूक पासवर्ड.",
  "login_failed": "लॉगिन अयशस्वी झाला. कृपया पुन्हा प्रयत्न करा.",
  "register_title": "नोंदणी",
  "username_label": "वापरकर्ता नाव",
  "confirm_password_label": "पासवर्डची पुष्टी करा",
  "register_button": "नोंदणी करा",
  "login_prompt": "आधीच खाते आहे?",
  "login_here": "येथे लॉगिन करा",
  "username_required": "वापरकर्तानाव आवश्यक आहे.",
  "confirm_password_required": "पासवर्डची पुष्टी आवश्यक आहे.",
  "passwords_do_not_match": "पासवर्ड जुळत नाहीत.",
      'clouds': 'बादल',
      'mist': 'कोहरा',
      'smoke': 'धूर',
      'haze': 'धुंध',
      'dust': 'धूळ',
      'fog': 'कुहासा',
      'rain': 'पाऊस',
      'drizzle': 'थेंब',
      'shower_rain': 'पाऊस',
      'thunderstorm': 'आंधी-तुफान',
      'clear': 'स्वच्छ',
      'value':'किंमत',
      'Please enter': 'कृपया प्रविष्ट करा',
      'Enter a value between': 'कृपया एक मूल्य प्रविष्ट करा',
      'Valid range': 'वैध श्रेणी',
      'Predicted Crop': 'भविष्यवाणी केलेला पीक',
      'Fertilizer Recommendation': 'खते शिफारस',
      'Cancel': 'रद्द करा',
      'Clear': 'स्पष्ट करा',
      'crops.Rice': 'तांदूळ',
      'crops.Maize': 'मका',
      'crops.ChickPea': 'चणा',
      'crops.KidneyBeans': 'राजमा',
      'crops.PigeonPeas': 'हरभरा',
      'crops.MothBeans': 'मोठा चणा',
      'crops.MungBean': 'मूग',
      'crops.Blackgram': 'उडद',
      'crops.Lentil': 'डाळ',
      'crops.Pomegranate': 'अनार',
      'crops.Banana': 'केळी',
      'crops.Mango': 'आंबा',
      'crops.Grapes': 'अंगूर',
      'crops.Watermelon': 'तरबूज',
      'crops.Muskmelon': 'खरबूज',
      'crops.Apple': 'सफरचंद',
      'crops.Orange': 'संत्रा',
      'crops.Papaya': 'पपई',
      'crops.Coconut': 'नारळ',
      'crops.Cotton': 'कापस',
      'crops.Jute': 'जूट',
      'crops.Coffee': 'कॉफी',

      'fertilizers.NPK': 'NPK 10-26-26 किंवा 20-20-0',
      'fertilizers.SSP': 'सिंगल सुपर फॉस्फेट (SSP) / DAP',
      'fertilizers.MOP': 'म्युरिएट ऑफ पोटाश (MOP)',
      'fertilizers.SSP_MOP': 'सिंगल सुपर फॉस्फेट (SSP) / DAP, म्युरिएट ऑफ पोटाश (MOP)',
      'fertilizers.Urea': 'युरिया/अमोनियम सल्फेट',
      'fertilizers.Urea_MOP': 'युरिया/अमोनियम सल्फेट, म्युरिएट ऑफ पोटाश (MOP)',
      'fertilizers.Urea_SSP_MOP': 'युरिया/अमोनियम सल्फेट, सिंगल सुपर फॉस्फेट (SSP) / DAP, म्युरिएट ऑफ पोटाश (MOP)',
      'fertilizers.Urea_SSP': 'युरिया/अमोनियम सल्फेट, सिंगल सुपर फॉस्फेट (SSP) / DAP',
  "cropPrediction": "पिक भाकित",
  "Nitrogen": "नायट्रोजन",
  "Phosphorus": "फॉस्फरस",
  "Potassium": "पोटॅशियम",
  "Temperature": "तापमान",
  "Humidity": "आर्द्रता",
  "Rainfall": "पर्जन्य",
  "kg/ha": "किलो/हेक्टर",
  "°C": "°से",
  "%": "%",
  "mm": "मिमी",
  "predictCrop": "पिक भाकित करा",
  "clearInputs": "इनपुट साफ करा",
  "confirmClear": "साफ करण्याची पुष्टी करा",
  "clearInputConfirmation": "आपण इनपुट फील्ड साफ करू इच्छिता का हे आपण निश्चित आहात का?",
  "enterValue": "{label} साठी कृपया एक मूल्य प्रविष्ट करा.",
  "validRange": "मूल्य {min} आणि {max} दरम्यान असावे.",
  "validRangeMessage": "{unit} मध्ये मूल्य {min} आणि {max} दरम्यान असावे.",
  "predictedCrop": "भाकीत केलेली पीक आहे: {crop}",
  "fertilizerRecommendation": "शिफारस केलेली खत: {fertilizer}",
  "error": "त्रुटी {statusCode}: {reasonPhrase}",
  "exception": "एक अपवाद झाला: {error}",
  "please_enter_value": "कृपया {label} मूल्य प्रविष्ट करा",
  "enter_value_between": "एक मूल्य प्रविष्ट करा जे {min} आणि {max} यामध्ये आहे",
  "valid_range": "वैध श्रेणी: {min} - {max} {unit}",
  'krishi_dss': 'कृषी डीएसएस',
      "home": "होम",
      "profile": "प्रोफाइल",
      "weather": "हवामान",
      "aboutUs": "आमच्याबद्दल",
      "logout": "लॉगआउट",
      "selectLanguage": "भाषा निवडा",
      "english": "इंग्रजी",
      "hindi": "हिंदी",
      "marathi": "मराठी",
      "about_us_title": "कृषी मित्राबद्दल",
      "about_krishi_mitra": "कृषी मित्राबद्दल",
      "welcome_message": "कृषी मित्रात आपले स्वागत आहे! आमचा अ‍ॅप शेतकऱ्यांना त्यांच्या शेतीला सुधारण्यासाठी आणि अधिक पिके वाढवण्यासाठी नवीनतम तंत्रज्ञान वापरण्यात मदत करतो.",
      "name_explanation": "'कृषी' म्हणजे शेती, आणि 'मित्र' म्हणजे मित्र. त्यामुळे, 'कृषी मित्र' म्हणजे 'शेतकऱ्यांचा मित्र.' हा एक योग्य नाव आहे कारण आमचा अ‍ॅप शेतकऱ्यांना मदत करण्यासाठी आहे.",
      "thank_you_message": "कृषी मित्र वापरल्याबद्दल धन्यवाद. आम्ही आपल्याला प्रत्येक टप्प्यावर मदत करण्यासाठी येथे आहोत आणि आशा करतो की आमचा अ‍ॅप आपली शेती अधिक चांगली आणि सोपी बनेल!",
      "profile_title": "प्रोफाइल",
      "name_label": "नाव",
      "error_fetching_data": "वापरकर्ता डेटा प्राप्त करण्यात त्रुटी",
      "no_user_data": "कोणताही वापरकर्ता डेटा सापडला नाही",
      "weather_title": "हवा",
      "enter_city": "शहराचे नाव प्रविष्ट करा",
      "loading_city": "शहर लोड होत आहे...",
      "humidity_label": "आर्द्रता: {value}%",
      "wind_speed_label": "वारा गती: {value} मीटर/सेकंद",
      "nitrogen": "नायट्रोजन",
      "phosphorus": "फॉस्फोरस",
      "potassium": "पोटॅशियम",
      "temperature": "तापमान",
      "humidity": "आर्द्रता",
      "rainfall": "पर्जन्य",
      "selectState": "राज्य निवडा",
      "prediction": "भविष्यवाणी",
      "pleaseEnterValue": "कृपया मूल्य भरा",
      "valueBetween": "एक मूल्य भरा {min} आणि {max} दरम्यान",
      "selectStateError": "कृपया एक राज्य निवडा",
      "loading": "लोड करत आहे",
      "networkError": "त्रुटी: {statusCode} {reasonPhrase}",
      // Marathi translations for Rent page
      "rentTitle": "साधन भाड्याने घ्या",
      "rentTractors": "ट्रॅक्टर",
      "rentHarvesters": "हार्वेस्टर",
      "rentCultivators": "खरतर",
      "rentTrailers": "ट्रेलर",
      "rentSprayers": "फवारणी यंत्र",
      "equipmentDescription": "वर्णन",
      "equipmentPrice": "किंमत: {price}",
      "addToCart": "कार्टमध्ये जोडा",
      "removeFromCart": "कार्टमधून काढा",
      "totalPrice": "एकूण किंमत",
      "totalItems": "एकूण वस्तू",
      "clearCart": "कार्ट साफ करा",
      "receiptGenerated": "पावती तयार",
      "formatDouble": "{value} INR",
      'home_page.title': 'सरकारी योजना',
      'home_page.description': 'किसानांना समर्थन आणि सशक्त करण्यासाठी डिझाइन केलेल्या विविध सरकारी योजनांचा अन्वेषण करा. प्रत्येक योजनाबद्दल अधिक जाणून घेण्यासाठी खालील लिंकवर क्लिक करा.',
      'home_page.key_schemes': 'किसानांसाठी उपलब्ध असलेल्या काही मुख्य योजना आणि कार्यक्रम येथे आहेत:',
      // Krishi Mitra
      "krishi_mitra": "कृषी मित्र",
      // home
      'dgces': 'डीजीसीईएस',
      'krishi_mapper': 'कृषी मॅपर',
      'upag': 'यूपीएजी',
      'sathi': 'साथी',
      'pm_kisan': 'पीएम किसान सन्मान निधी',
      'pmfby': 'प्रधानमंत्री पिक विमा योजना',
      'nfsm': 'राष्ट्रीय अन्न सुरक्षा अभियान',
      'rkvy': 'राष्ट्रीय कृषी विकास योजना',
      'pdmc': 'पीडीएमसी',
      'nhb_inspection': 'एनएचबी तपासणी',
      'ami': 'कृषी विपणन पायाभूत सुविधा (एएमआय)',
      'seednet': 'सीडनेट',
      'acabc': 'एसीएबीसी',
      'nf': 'नैसर्गिक शेती (एनएफ)',
      'natural_bamboo_mission': 'नैसर्गिक बांबू अभियान',
      'national_beekeeping_mission': 'राष्ट्रीय मधमाशी पालन आणि मध मिशन',
      'mt_chc_portal': 'एम एंड टी सीएचसी पोर्टल',
      'nmeo': 'एनएमईओ',
      'agroforestry': 'कृषीवनीकरण',
      'rad': 'वर्षाश्रित क्षेत्र विकास (आरएडी)',
      'mkisan': 'एमकिसान',
      'soil_health_card': 'माती आरोग्य पत्र',
      'agriinfra': 'कृषीइन्फ्रा',
      'enam': 'राष्ट्रीय कृषी बाजार',
      'farms_farm_machinery': 'फार्म्स फार्म मशिनरी सोल्युशन्स',
      'kisan_call_center': 'किसान कॉल सेंटर डायल 1800 180 1551',
      'doubling_farmers_income': 'शेतकऱ्यांचे उत्पन्न दुप्पट करणे',
      'mncfc': 'एमएनसीएफसी',
    // Rent
      'john_deere_5075e': 'जॉन डिअर 5075E',
      'john_deere_5075e_desc': 'जॉन डिअर 5075E हा 75 HP चा ट्रॅक्टर आहे, '
          'जो 2900 CC इंजिन, 12-स्पीड गियरबॉक्स आणि 2000 किलो उचलण्याची क्षमता असलेल्या '
          'विकल्पांमध्ये उपलब्ध आहे. याला विश्वसनीयता आणि कार्यक्षमतेसाठी ओळखले जाते, '
          'तेल-डुंबलेल्या ब्रेक्स, ADDC हायड्रॉलिक नियंत्रण आणि 2050 मिमी व्हीलबेस यांसारख्या वैशिष्ट्यांसह.'
          '\nकिंमत: ₹3000/तास.'
          '\nMRP: ₹10,00,000.'
          '\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।',

      'mahindra_jivo_225': "महिंद्रा जीवो 225 DI",
      'mahindra_jivo_225_desc': "महिंद्रा जीवो 225 DI हा 20 HP मिनी ट्रॅक्टर आहे, "
          "8 फॉरवर्ड आणि 4 रिव्हर्स गियर आणि 750 किलो उचलण्याची क्षमता असलेल्या. "
          "तेल-डुंबलेल्या ब्रेक्स आणि 22-लिटर इंधन टाकीबरोबर. त्याच्या बहुपयोगासाठी ओळखले जाते."
          "\nकिंमत: ₹1000/तास."
          "\nMRP: ₹5,00,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'john_deere_w50': "जॉन डिअर W50 ग्रेन हार्वेस्टर",
      'john_deere_w50_desc': "जॉन डिअर W50 कंबाइन हार्वेस्टर मध्ये 75 HP टर्बोचार्ज्ड इंजिन आहे, "
          "जे ड्राय-टाइप एयर क्लीनर आणि 4 सिलेंडर वापरते. हे तांत्रिकदृष्ट्या उन्नत आहे."
          "\nकिंमत: ₹2000/तास."
          "\nMRP: ₹15,00,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'mahindra_arjun_605': "महिंद्रा अर्जुन 605",
      'mahindra_arjun_605_desc': "महिंद्रा अर्जुन 605 हा कंबाइन हार्वेस्टर आहे जो "
          "उत्कृष्ट मायलेज आणि विविध वैशिष्ट्यांसाठी ओळखला जातो."
          "\nकिंमत: ₹1500/तास."
          "\nMRP: ₹10,00,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'mahindra_cultivator': "महिंद्रा कल्टीवेटर",
      'mahindra_cultivator_desc': "महिंद्रा कल्टीवेटर हा एक बहुउद्देशीय उपकरण आहे, जो "
          "35-65 HP ट्रॅक्टरसाठी उपयुक्त आहे."
          "\nकिंमत: ₹1000/तास."
          "\nMRP: ₹20,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'swaraj_spring_loaded': "स्वराज स्प्रिंग लोडेड कल्टीवेटर",
      'swaraj_spring_loaded_desc': "स्वराज स्प्रिंग लोडेड कल्टीवेटर हा "
          "35 HP ट्रॅक्टरसाठी उपयुक्त आहे."
          "\nकिंमत: ₹800/तास."
          "\nMRP: ₹22,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'mc_mtl_nt_5m': "MC MTL NT 5M",
      'mc_mtl_nt_5m_desc': "MC MTL-NT-5M हा 50+ HP ट्रॅक्टरसाठी योग्य आहे."
          "\nकिंमत: ₹1000/तास."
          "\nMRP: ₹50,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'sai_agro_four_wheel': "साई एग्रो फोर व्हील टिपिंग 9",
      'sai_agro_four_wheel_desc': "साई एग्रो फोर व्हील टिपिंग 9 हा 70-90 HP ट्रॅक्टरसाठी आहे."
          "\nकिंमत: ₹1500/तास."
          "\nMRP: ₹60,000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'neptune_hariyali_08': "नेपच्यून हरियाली-08 मॅन्युअल",
      'neptune_hariyali_08_desc': "नेपच्यून हरियाली-08 हा एक हलका स्प्रेयर आहे."
          "\nकिंमत: ₹200/तास."
          "\nMRP: ₹2000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",

      'neptune_htp_gold': "नेपच्यून HTP गोल्ड प्लस",
      'neptune_htp_gold_desc': "नेपच्यून HTP गोल्ड प्लस हा एक मजबूत स्प्रेयर आहे."
          "\nकिंमत: ₹300/तास."
          "\nMRP: ₹3000."
          "\nकृपया लक्षात ठेवा, वापरादरम्यान उपकरणाला नुकसान झाल्यास, MRP च्या 10% शुल्क लागेल।",
    },
  };
}
