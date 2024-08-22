# Instructions

- [3D Pipeline](#3d-pipeline)
- [Video Editing Pipeline](#video-editing-pipeline)
- [Nomenclature for Deliverables](#nomenclature-for-deliverables)


## 3D Pipeline

- **01_PreProduction**
  - **01_Scripts**: Contains all scripts related to the project, such as planning documents or automation scripts.
  - **02_Storyboards**: Houses storyboard files that outline the project's visual sequences and scenes.
  - **03_Concept_Art**: Stores concept art, sketches, and visual ideas that define the look and feel of the project.
  - **04_Briefings**: Includes project briefs, outlines, and other documentation related to project objectives and goals.

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

## Video Editing Pipeline

1. **01_ProjectFiles**: Core project management and setup files.
   - **Project Files**: Contains the main project files (e.g., `.aep` for After Effects, `.prproj` for Premiere Pro).
   - **Brief & Documentation**: Project brief, scripts, storyboards, and other relevant documents.
   - **References**: Reference images, mood boards, and inspiration materials.

2. **02_Assets**: Central repository for all creative assets.
   - **Graphics**: Vector and raster graphics, illustrations, and logos.
   - **Fonts**: All typefaces used in the project.
   - **Stock Footage**: Purchased or sourced video clips.
   - **Textures**: Textures and patterns used in the project.
   - **3D Models**: 3D assets used in motion graphics.
   - **Audio**:
     - **Music**: Music tracks.
     - **VoiceOvers**: Voice-over recordings.
     - **SFX**: Sound effects.
   - **Compositions**: Pre-comps or sub-comps used in main compositions.
   - **Plugins & Presets**: Custom or third-party plugins and presets.

3. **03_Design**: Files related to the design phase.
   - **Style Frames**: Key visual frames representing the look and feel of the project.
   - **Storyboards**: Detailed visual representations of the scenes.
   - **Animatics**: Rough animations or sequences created to visualize timing and transitions.

4. **04_Scenes**: Individual scene files, organized by sequence or scene number.
   - **Scene 01**: Specific assets and compositions for Scene 01.
   - **Scene 02**: Specific assets and compositions for Scene 02.
   - **Scene...**: Additional scenes as needed.

5. **05_Renders**: Output files from the rendering process.
   - **Preview Renders**: Low-res or draft renders for review.
   - **Final Renders**: High-res renders for final delivery.
   - **Image Sequences**: Frame-by-frame renders, often used for further compositing.

6. **06_Exports**: Exported files for review, approval, or delivery.
   - **Work in Progress**: Draft exports shared with clients or team members.
   - **Final**: Final versions of the project for delivery.
   - **Social Media**: Variants optimized for different platforms like Instagram, YouTube, etc.

7. **07_Backups**: Backup copies of essential files to prevent data loss.
   - **Project Backups**: Incremental backups of the project files.
   - **Render Backups**: Backup of final and preview renders.

8. **08_Archive**: For storing older versions of assets or scenes that are no longer in active use.
   - **Old Scenes**: Deprecated scene files.
   - **Old Assets**: Older versions of assets no longer in use.

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
