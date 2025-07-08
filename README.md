# VR Earthquake Experience
Final Year Project - BSc in Computer Science
This repository contains the source code for the "VR Earthquake Experience," a virtual reality (VR) application developed as a final year project for a Bachelor of Science in Computer Science at Technological University Dublin. The project aims to enhance earthquake preparedness and safety awareness through an immersive and interactive simulation.

## 💡 Project Overview
The "VR Earthquake Experience" immerses users in realistic earthquake scenarios within a virtual environment, such as an apartment and a street. The primary goal is to educate users, particularly children, on effective response strategies during an earthquake. By providing a "real feel" presentation with visuals and sounds, the application helps users understand how to behave and immediately respond to such an event.

A key feature is a gamified scoring system that awards points for choosing correct hiding spots, motivating users to learn and improve their safety knowledge. Additionally, the application includes an interactive map of the Western United States, displaying historical earthquake data from the National Earthquake Information Center (NEIC), allowing users to explore details of past seismic events.

## ✨ Features
Immersive Earthquake Simulation: Experience realistic earthquake scenarios in a VR environment.

Interactive Learning: Learn safe hiding spots and emergency procedures.

Gamified Scoring System: Earn points for making correct safety decisions, encouraging repeated engagement.

Dynamic Environments: Navigate through various scenes like an apartment and a street during an earthquake.

Object Interaction: Objects in the scene shake realistically during the simulation.

Earthquake Map: Explore a map of the Western United States displaying historical earthquake data, with clickable points to view details (magnitude, date, location, depth).

Leaderboard: View top players based on their scores, adding a competitive learning element.

User-Friendly Interface: Intuitive VR controls for movement and UI interaction.

## 🛠️ Technologies Used
Game Engine: Godot 4.x

VR Headset: Meta Quest 2

Scripting Language: GDScript (Godot's built-in scripting language)

Database: SQLite (managed via godot-sqlite addon) for storing player scores and earthquake data.

3D Modeling: Blender (for creating custom models and utilizing BlenderKit assets)

VR Toolkit: godot-xr-tools library for core VR functionalities (player movement, camera, controller input, virtual keyboard, 2D-to-3D viewport integration).

Data Source: National Earthquake Information Center (NEIC) for historical earthquake data.

## 🚀 Getting Started
To run this project, you will need:

Godot Engine 4.x: Download from the official Godot website.

Meta Quest 2 VR Headset: The application is developed and tested for this device.

Godot SQLite Addon: Ensure this addon is correctly configured within your Godot project.

Godot XR Tools Library: This library is integrated for VR functionalities.

## Installation & Setup:

Open in Godot Engine:

Open Godot Engine 4.x.

Click "Import" and select the project.godot file from the cloned repository.

Open the project.

Configure VR:

Ensure your Meta Quest 2 is connected and set up for PC VR (e.g., via Oculus Link or Air Link).

In Godot, go to Project -> Project Settings -> XR and ensure your VR setup is correctly detected.

Database Setup:

The DatabaseManager script (a global singleton) handles the creation of the SQLite database and tables (players, earthquakes) on first run.

Earthquake data is manually populated within the DatabaseManager script (earthquake_data() function).

Run the Project:

Click the "Play" button (or F5) in Godot Engine to run the application on your connected VR headset.

📂 Project Structure (Key Scenes & Scripts)
res://Scenes/main_menu.tscn: The starting point of the game, allowing navigation to different sections.

res://Scenes/input_name.tscn: Scene for user to enter their name before starting the game.

res://Scenes/apartment.tscn: First gameplay level, simulating an earthquake in an apartment.

res://Scenes/street.tscn: Second gameplay level, simulating an earthquake on a street.

res://Scenes/between_levels.tscn: Transition screen displaying score and offering navigation options.

res://Scenes/end_screen.tscn: Final screen displaying total score and exit options.

res://Scenes/earthquake_map.tscn: Interactive map displaying historical earthquake data.

res://Scenes/leaderboard.tscn: Displays the top 10 player scores.

res://Scripts/game_manager.gd: Global singleton managing scene changes, background music, and player data (username, score).

res://Scripts/database_manager.gd: Global singleton handling all database operations (creation, saving player data, fetching leaderboard, loading earthquake details).

res://Scripts/game_logic.gd: Manages in-game timers, player position detection, and scoring logic for levels.

res://Scripts/objects_shaking.gd: Script attached to objects to simulate shaking during an earthquake.

res://Models/: Contains 3D models used in the environments, some created in Blender, others from free assets.

📈 Future Work
This project serves as a strong foundation for a comprehensive VR earthquake preparedness tool. Future enhancements could include:

Expanded Gameplay: Add more interactive levels and diverse scenarios to prolong engagement and learning.

In-Game Tutorials: Implement clear tutorials for VR controls and gameplay mechanics to improve user onboarding, especially for new VR users.

Enhanced Interactivity: Increase interaction with objects in the game environments.

Global Earthquake Data: Expand the earthquake map to include data from around the world.

Advanced Gamification: Introduce more complex gamification elements and challenges.
