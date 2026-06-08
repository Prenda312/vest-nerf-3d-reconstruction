# Experiment Log

## Source Project

Local source directory inspected:

```text
C:\Users\Lenovo\Desktop\P2
```

The directory contains the original video, extracted frames, an Instant-NGP checkout with generated reconstruction outputs, and a Gaussian Splatting checkout.

## Observed Inputs

- `vest.mp4`: source video
- `frame1`: 81 extracted JPG frames
- `frame2`: 135 extracted JPG frames
- `frame3`: 215 extracted JPG frames

The final Instant-NGP dataset appears to use the 215-frame sequence.

## Instant-NGP Outputs

Important observed files:

```text
C:\Users\Lenovo\Desktop\P2\instant-ngp\colmap.db
C:\Users\Lenovo\Desktop\P2\instant-ngp\colmap_sparse
C:\Users\Lenovo\Desktop\P2\instant-ngp\colmap_text
C:\Users\Lenovo\Desktop\P2\instant-ngp\transforms.json
C:\Users\Lenovo\Desktop\P2\instant-ngp\data\vest3\base.ingp
C:\Users\Lenovo\Desktop\P2\instant-ngp\data\vest3\rgba_slices
```

The `transforms.json` file reports:

- 215 frames
- 720 x 1280 image resolution
- `aabb_scale`: 16

The trained snapshot `base.ingp` is approximately 35.7 MB.

## Volume and Slice Exports

The project also contains:

```text
C:\Users\Lenovo\Desktop\P2\vest\rgba_slices
C:\Users\Lenovo\Desktop\P2\vest\volume_raw
```

The `volume_raw` folder includes five 256 x 256 x 256 binary volume files. These are useful as evidence of volumetric export, but they are too large for normal Git tracking.

## Gaussian Splatting Status

The local project includes a clone of:

```text
https://github.com/graphdeco-inria/gaussian-splatting
```

No trained Gaussian Splatting output such as `.ply`, model checkpoints, or an `output` directory was found during inspection. For now, this should be described as planned future work rather than a completed result.

## Portfolio Summary

This is best described as a small monocular video-to-NeRF 3D reconstruction project. It demonstrates the practical reconstruction pipeline: frame extraction, COLMAP pose estimation, NeRF training, and exported visual artifacts.
