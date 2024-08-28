# Instructions

- [3D Pipeline](#3d-pipeline)
- [Video Editing Pipeline](#video-editing-pipeline)
- [Nomenclature for Deliverables](#nomenclature-for-deliverables)


## 3D Pipeline

```
<FormattedDate>_<ProjectName>
│
├── 01_PreProduction
│   ├── 01_Briefings
│   ├── 02_Scripts
│   └── 03_Concept_Art
│
├── 02_Assets
│   ├── 01_Models
│   │   ├── 01_Characters
│   │   ├── 02_Environments
│   │   └── 03_Props
│   ├── 02_Textures
│   │   ├── 01_Character_Textures
│   │   ├── 02_Environment_Textures
│   │   ├── 03_Prop_Textures
│   │   └── 04_Materials
│   └── 03_References
│
├── 03_Animation
│   ├── 01_Storyboards
│   ├── 02_Animatics
│   ├── 03_Keyframes
│   └── 04_Scene_Files
│
├── 04_Renders
│   ├── 01_Preview_Renders
│   ├── 02_Final_Renders
│   ├── 03_Caches
│   └── 04_Image_Sequences
│
├── 05_Exports
│   ├── 01_WIP_Exports
│   ├── 02_Final_Exports
│   └── 03_Delivery
│
└── 06_Backups
    ├── 01_Project_Backups
    └── 02_Render_Backups
```

<details>
  <summary>Explanation</summary>

- **01_PreProduction**: Contains all pre-production related files.
  - **01_Briefings**: Houses project briefs and any related initial documentation.
  - **02_Scripts**: Stores scripts for the project, including drafts and final versions.
  - **03_Concept_Art**: Includes concept art, sketches, and design visuals used during the project planning phase.

- **02_Assets**: This directory contains all asset-related files used in the project.
  - **01_Models**: Stores all 3D models.
    - **01_Characters**: Character models used in the project.
    - **02_Environments**: Environmental models, such as landscapes or buildings.
    - **03_Props**: Prop models, including any items or objects used in scenes.
  - **02_Textures**: Holds texture files applied to 3D models.
    - **01_Character_Textures**: Textures specifically for character models.
    - **02_Environment_Textures**: Textures for environmental models.
    - **03_Prop_Textures**: Textures for prop models.
    - **04_Materials**: Materials and shaders used in the project.
  - **03_References**: Reference images, documents, and other resources utilized during the creation of models and animations.

- **03_Animation**: Organizes all animation-related files.
  - **01_Storyboards**: Contains storyboards outlining the sequences of animation.
  - **02_Animatics**: Includes animatics, which are preliminary versions of the animation.
  - **03_Keyframes**: Stores keyframes, which define the main poses or moments in the animation timeline.
  - **04_Scene_Files**: Contains files related to individual scenes within the animation.

- **04_Renders**: Holds all render-related outputs.
  - **01_Preview_Renders**: Preview renders for checking progress and making adjustments.
  - **02_Final_Renders**: Final renders, representing the completed visual outputs.
  - **03_Caches**: Cache files generated during the rendering process, useful for re-renders or troubleshooting.
  - **04_Image_Sequences**: Image sequences generated from the renders, often used in post-production.

- **05_Exports**: Contains files prepared for export and delivery.
  - **01_WIP_Exports**: Work-in-progress exports, typically used for reviews and feedback.
  - **02_Final_Exports**: Finalized export files ready for distribution or client delivery.
  - **03_Delivery**: Files and assets that are packaged and ready for final delivery.

- **06_Backups**: Backup directories to ensure the project is safe from data loss.
  - **01_Project_Backups**: Backups of the entire project directory.
  - **02_Render_Backups**: Backups specifically related to rendered files, ensuring no loss of important outputs.

</details>

## Video Editing Pipeline

```
<FormattedDate>_<ProjectName>
│
├── 01_Assets
│   ├── 01_Briefing
│   ├── 02_Graphics
│   ├── 03_Fonts
│   ├── 04_StockFootage
│   ├── 05_Textures
│   ├── 06_3D_Models
│   └── 07_Audio
│       ├── 01_Music
│       ├── 02_VoiceOver
│       └── 03_SFX
│
├── 02_Animation
│   ├── 01_Storyboard
│   ├── 02_Keyframes
│   └── 03_Scenes
│
├── 03_Render
│   ├── 01_Preview
│   ├── 02_Final
│   └── 03_ImageSequence
│
├── 04_Export
│   └── 01_Delivery
│
└── 05_Backups
```

<details>
  <summary>Explanation</summary>

- **01_Assets**: Contains all asset-related files and subfolders.
  - **01_Briefing**: Houses project briefs and related documentation.
  - **02_Graphics**: Stores graphic files used in the project.
  - **03_Fonts**: Includes font files for the project.
  - **04_StockFootage**: Contains stock footage and video assets.
  - **05_Textures**: Holds texture files for models and environments.
  - **06_3D_Models**: Stores 3D models of characters, environments, and props.
  - **07_Audio**: Includes all audio-related files.
    - **01_Music**: Contains background music tracks.
    - **02_VoiceOver**: Stores voice-over recordings.
    - **03_SFX**: Houses sound effects.

- **02_Animation**: Contains folders related to animation work.
  - **01_Storyboard**: Stores storyboard files that outline animation sequences.
  - **02_Keyframes**: Holds keyframes that define critical points in animations.
  - **03_Scenes**: Includes files for different scenes in the animation.

- **03_Render**: Contains folders related to rendering.
  - **01_Preview**: Houses preview renders for review.
  - **02_Final**: Stores final rendered outputs.
  - **03_ImageSequence**: Includes sequences of images created during rendering.

- **04_Export**: Contains folders related to exporting final files.
  - **01_Delivery**: Includes files and assets prepared for delivery to clients or stakeholders.

- **05_Backups**: Houses backup folders for safeguarding project files.
  - **01_Project_Backups**: Contains backup files for the entire project.
  - **02_Render_Backups**: Stores backup files specific to rendered outputs.

</details>

## Nomenclature for Deliverables

`[ProjectName+Type]_[Preview]/[LowRes/Final]_v[Version]`

Where
- ProjectName+Type: Name of the project, followed by type of the content

- Preview:      In case of viewport/grayscale/playblast animation

- Version:      1,2,3...n
          Version number will bump up to the next number only if there are major changes. Alternatively 1,1a,1b...1z should be followed. Preceeding 'v' is case sensitive. DO NOT use capitalized 'V' as a mandate.
          
Example: `Maybelline+CGI_LowRes_v1a`

### Subcategories:

- Storyboard > `STBD`
- Keyframe > `KF`
