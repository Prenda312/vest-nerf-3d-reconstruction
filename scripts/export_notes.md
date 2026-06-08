# Instant-NGP Export Notes

Instant-NGP exports are usually performed through the GUI after loading a trained scene or snapshot.

Suggested export workflow:

1. Open Instant-NGP.
2. Load `transforms.json` or an existing `.ingp` snapshot.
3. Inspect the reconstruction from multiple camera angles.
4. Save a snapshot as `base.ingp`.
5. Use the volume or slice export options to generate RGBA slices.
6. Keep large exports outside Git or publish them through GitHub Releases / Git LFS.

For a portfolio repository, include only a few representative screenshots or slices in `assets/`.
