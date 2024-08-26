# Instructions

- [3D Pipeline](#3d-pipeline)
- [Video Editing Pipeline](#video-editing-pipeline)
- [Nomenclature for Deliverables](#nomenclature-for-deliverables)


## 3D Pipeline

```
<FormattedDate>_<ProjectName>
│
├── 01_PreProduction
│   ├── 01_Scripts
│   ├── 02_Storyboards
│   ├── 03_Concept_Art
│   └── 04_Briefing
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

- **01_PreProduction**
  - **01_Scripts**: Contains all scripts related to the project, such as planning documents or automation scripts.
  - **02_Storyboards**: Houses storyboard files that outline the project's visual sequences and scenes.
  - **03_Concept_Art**: Stores concept art, sketches, and visual ideas that define the look and feel of the project.
  - **04_Briefing**: Includes project briefs, outlines, and other documentation related to project objectives and goals.

- **02_Assets**
  - **01_Models**
    - **01_Characters**: Contains 3D models of characters used in the project.
    - **02_Environments**: Includes 3D models of environments and backgrounds.
    - **03_Props**: Stores 3D models of props and other objects.
  - **02_Textures**
    - **01_Character_Textures**: Houses textures specifically for character models.
    - **02_Environment_Textures**: Contains textures for environmental elements.
    - **03_Prop_Textures**: Includes textures for props.
    - **04_Materials**: Stores materials used in the project, such as shaders and surface properties.
  - **03_References**: Contains reference materials, such as images or documents, that aid in the creation of models and textures.

- **03_Animation**
  - **01_Storyboards**: Holds storyboards related to animation sequences.
  - **02_Animatics**: Contains animatics, which are preliminary versions of animations.
  - **03_Keyframes**: Stores keyframes that define critical points in animation.
  - **04_Scene_Files**: Includes files for different scenes in the animation process.

- **04_Renders**
  - **01_Preview_Renders**: Contains renders that are used for previewing the project.
  - **02_Final_Renders**: Houses the final rendered outputs of the project.
  - **03_Caches**: Stores cache files generated during the rendering process.
  - **04_Image_Sequences**: Includes sequences of images created during rendering.

- **05_Exports**
  - **01_WIP_Exports**: Contains work-in-progress exports that are not yet finalized.
  - **02_Final_Exports**: Houses final exported files ready for delivery or presentation.
  - **03_Delivery**: Includes files and assets prepared for delivery to clients or stakeholders.

- **06_Backups**
  - **01_Project_Backups**: Contains backup files for the entire project to safeguard against data loss.
  - **02_Render_Backups**: Stores backup files specific to renders.

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
