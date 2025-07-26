# 📱 Google Search App Clone - Final Project Specification

## 📝 Description

This is a Flutter-based mobile application that mimics the core functionality of a Google Search app. It features Firebase Authentication, Google Custom Search API integration, and a clean user interface following the MVVM architecture with GetX state management. This app is designed as a final project for learning Flutter, API integration, and modern app architecture practices.

---

## 🚀 Features

- 🔐 **User Authentication** via Firebase (Login & Register)
- 🔍 **Google Search** powered by the Google Custom Search API
- 🎯 **MVVM Architecture** using GetX for state & route management
- 🎨 Visually enhanced UI with background images and clean layouts
- 📱 Responsive design for Android/iOS devices

---

## 🧱 App Structure (Pages)

| Page            | Description                                                       |
| --------------- | ----------------------------------------------------------------- |
| `Splash Screen` | Initial loading screen with a background image and app name       |
| `Onboarding`    | Quick intro screen (optional, replaced with splash)               |
| `Login`         | User login form using Firebase Auth                               |
| `Register`      | User registration form using Firebase Auth                        |
| `Home`          | Menu with options and icons for navigation                        |
| `Search`        | Main page to perform web searches via Google Custom Search API    |
| `Profile`       | Shows logged-in user's email with logout button and profile image |

---

## 🧩 APIs Used

### 1. **Firebase Authentication**

- Used for user login and registration.
- Firebase setup includes `google-services.json` for Android.

### 2. **Google Custom Search API**

- Public API for web searching.
- Requires `API_KEY` and `CX` (Custom Search Engine ID).
- Documentation: https://developers.google.com/custom-search/v1/overview

---

## 🧠 State Management & Architecture

- **GetX** used for:
  - Dependency injection
  - Reactive state management (`Obx`)
  - Navigation (`Get.to`, `Get.offAllNamed`)
- **MVVM Pattern**:
  - Models for API response
  - Views for UI screens
  - Controllers handle logic and bind view/model

---

## 📸 Images & Assets

- Background and avatar images sourced from:
  - `https://images.unsplash.com/...`

---

## 📌 Notes

- Be sure to set up your Firebase project and download the `google-services.json` into your `/android/app` folder.
- Replace placeholder `YOUR_API_KEY` and `YOUR_CX_ID` in `SearchController` with your actual Google API credentials.
- Make sure to enable **Email/Password Sign-in** in Firebase Auth settings.

---

## ✅ Minimum Requirements Fulfilled

- ✅ Flutter-based app
- ✅ At least 5 screens
- ✅ Connected to a real API
- ✅ Uses GetX for state management
- ✅ Firebase Auth integration
- ✅ Onboarding / Splash experience
- ✅ Clean layout and structured navigation
