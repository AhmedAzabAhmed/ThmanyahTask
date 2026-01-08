#  Thmanya Task

## About Solution
- This app is built using SwiftUI, Async/Await And MVVM Structure.
- Creating Dynamic content is implemented based on Content Type, Not basd on Indexes "Which means if you shuffled the order from APIs, UI Will also adapt"
- Making Sections As a reusable Componenets in order to use them in many screens like (Main & Search Screen)

## Challanges:
- Making a dynamic Content with Dynamic Data types
- Making App in Arabic
    - Since the Whole Content is comming from API, I tried to inspect the API, Adding language parameter to headers and as a quey parameter, But with No luck.. So It is in English
- Search
    - The shared API wasn't helpful, Just reutrn mock data, and this data is not valid to build the UI, plus it doesn't do any search. So I ignored the API and made the search Screen using the main page API

## TODO
- Create Network Layer using Async/await ✅
    - Models ✅
    - Network structure ✅
    - Error types ✅
    - Write Unit tests for it ✅
- Create View Model
    - create View Model ✅
    - API calls ✅
    - Write tests for it ✅
- UI Design
    - UI Sections ✅
        - Square  ✅
        - 2 lines Grid ✅
        - big Square ✅
        - Queue ✅
    - Create Main Screen UI ✅
        List Confirming to all UI Component types ✅
        - Pull to Refresh ✅
    - Create Search Screen ✅
