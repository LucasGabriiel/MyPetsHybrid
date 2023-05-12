# My Pets - Hybrid App
Flutter hybrid application, runs on multiple platforms, but the design was mostly focused on mobile (iOS and Android), even though it can also run on chrome, macOS and windows.
This is just an academic, developed during the Post Graduation Program "App development" at the "Hybrid App development" course at the PUC-PR University. This project was used to study hybdrid development using Flutter and improve Figma skills learned on past courses from the same Post Graduation Program. 
As an iOS developer, I wanted to understand simple components and behaviors that are common to usual applications. So this applications may look simple, but it uses a lot of common components and ideas that improves and build a good knowledge and understanding of flutter that would be important on more complex projects.
  
Project layout was done on Figma, using all good practice methods: components, auto layout, components variants, runnable prototype and more.
Project final design options:

<img width=300px src="https://github.com/Bressam/myPets/blob/main/SampleResources/figma-final-designs.png">

### Color Scheme
<img width=260px src="https://github.com/Bressam/myPets/blob/main/SampleResources/myPets-colorScheme.gif">

### Android and iOS Demo
<img width=520px src="https://github.com/Bressam/myPets/blob/main/SampleResources/myPets-HybridDemo.gif">

## Project Main topics
### Adaptability
Project uses color themes so it is responsive to system Light and Dark modes, and also has all text and font styles configured on a single file.
This both points make the project easily configurable to change either the Color Themes or all Font styles.

### Components modularization
Project split all its components into single files, making component reusability extrememly easy and robust. This also improves View's code readability, since both views and components keep small number o lines on its code. 
All project files were organized into folders/layers: model, database, scenes, components, theme.

### Common usage components
Project was focused on using common components, so it would work and improve development skills on components usually used on proffessional projects. This include lists, navigation bars, tab bars and more.

## Git Flow
The project follow the best practices on git flow. Bellow is a brief description of all branches used:
 - **main**: Release branch, represents all store releases;
 - **development**: Development branch, where all features branches starts from and usually the newest and most stable code;
 - **FEATURE/{featureName}**: The "FEATURE folder" wraps all feature branches. A feature branch will start from development, ex.: FEATURE/home. And all the feature work will be done at the feature branch until it is ready to be merged on development branch.
 - **hotfix**: Hotfix branch is used to fix major updates on release build (latest version on main branch). This is important to be able to fix a major issue on release branch without carrying all the new development branch that store unstable, and usually not validated yet, features.

The project also uses Git Tags to mark important release milestones.
### Project Git Flow image:
<img width=1909px src="https://github.com/Bressam/myPets/blob/main/SampleResources/myPets-gitflow.png">

## Project Layout & Figma project
Before starting the project development, a lot of layout studies where done trying to find the best color scheme for the application. All the study and development components can be found at the Figma link [**Figma project link.**](https://www.figma.com/file/hs7cWekyxf8NeGcZMsV2aF/MyPets---Hybrid-Mobile-app?node-id=4%3A721&t=kSJzR49leoancVWT-1).

The Figma project was done using the best pratices, creating components and exposing components variables to be easily resuable. Also, components variants where done (mostly for Bright and Dark modes), so they can be easily toggled between variants by a simple toggle variable at the component (image below). 
Also, Figma layout was correctly strcutred and planned to be able to run prototype with functional scrolls and navigations (gif example below). The Figma prototype project can be run with the provided Figma URL.
Also, the Figma project was split on multiple tabs to organize components, design, wireframes and other important categories.

### Figma Pages:
<img width=309px src="https://github.com/Bressam/myPets/blob/main/SampleResources/figma-pages.png">

### Figma Components:
<img width=500px src="https://github.com/Bressam/myPets/blob/main/SampleResources/figma-components.png">

### Figma Prototype run:
<img width=1909px src="https://github.com/Bressam/myPets/blob/main/SampleResources/figma-demo.gif">
