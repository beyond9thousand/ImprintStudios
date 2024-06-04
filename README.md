# Folder Structure

- [3D Pipeline](#3d-pipeline)
- [Video Editing Pipeline](#video-editing-pipeline)

## 3D Pipeline

1. **01_Asset**: Contains all the primary assets used in the project.
   - **01_Brief**: Project brief and initial concepts.
   - **02_Models**: 3D models.
   - **03_Textures**: Texture files for the models.
   - **04_References**: Reference images and materials.

2. **02_Animation**: All files related to the animation process.
   - **01_Storyboard**: Storyboards outlining the scenes.
   - **02_Keyframes**: Keyframe animations.
   - **03_Scenes**: Complete or nearly complete scene files, including:
     - **Main Scene Files**: `.blend`, `.c4d`, `.ma`, `.mb`
     - **Scene Layouts**: Early stage layout files
     - **Scene-Specific Assets**: Props, environment pieces, etc.
     - **Simulation Caches**: `.abc`, `.vdb`
     - **Previews and Playblasts**: `.mp4`, `.mov`, image sequences
     - **Notes and Documentation**: `.txt`, `.pdf`, `.xlsx`

3. **03_Render**: Files related to rendering the animations.
   - **01_Preview**: Preview renders for review.
   - **02_Final**: Final rendered outputs.

4. **04_Composite**: Compositing phase where different elements are combined.
   - **01_Preview**: Preview composites for review.
   - **02_Output**: Final composite outputs.
   - **03_Delivery**: Files prepared for delivery to clients or final output.

5. **05_Backups**: Backup copies of important files.

## Video Editing Pipeline

1. **01_ProjectFiles**: Stores the main project files from the editing software (e.g., Premiere Pro, Final Cut Pro, Avid). These are the core files you start with.

2. **02_References**: Reference materials such as scripts, storyboards, and inspiration files. These are often reviewed before the editing starts.

3. **03_Media**: Contains all raw and prepared media files, which are imported into the project:
   - **01_RawFootage**: Raw video files directly from the camera.
   - **02_Proxies**: Lower resolution or optimized files used for smoother editing.
   - **03_Audio**: Subdirectories for different types of audio:
     - **01_Music**: Music tracks.
     - **02_VoiceOvers**: Voice-over recordings.
     - **03_SFX**: Sound effects.
   - **04_Images**: Any images or stills used in the project.

4. **04_Assets**: Additional elements created or sourced for the project, often added during the editing process:
   - **01_Graphics**: Motion graphics, logos, and other graphical elements.
   - **02_Titles**: Title sequences and text elements.
   - **03_VFX**: Visual effects elements.

5. **05_Sequences**: Edited sequences or timelines, organized for easy access. This is where the actual editing work is done.

6. **06_Exports**: Final and intermediate exports, representing the output stages:
   - **01_WorkInProgress**: Drafts and intermediate exports for review.
   - **02_Final**: Final exported versions of the project.

7. **07_Backups**: Backup copies of important files, including project files and critical assets. Backups are critical at every stage.

8. **08_Delivery**: Files prepared for final delivery to clients or distribution channels. This is the final step.
