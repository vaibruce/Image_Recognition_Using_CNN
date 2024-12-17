# Image Recognition System for 128x128 Images

## Project Overview
This repository contains a complete Convolutional Neural Network (CNN) based image recognition system designed to detect and count occurrences of an 8x8 pattern within a 256x256 pixel image.

## System Specifications
- **Image Size:**  256x256 pixels
- **Pattern Size:** 8x8 pixels
- **Bit Depth:** 4 bits
- **Detection Methodology:** Convolutional Neural Network approach

## Implementation Stages
1. **Image Preprocessing**
   - Bit-depth reduction to 4 bits
   - Binary conversion of image data

2. **Convolution Stage 1**
   - Laplacian filter application
   - Feature map extraction
   - Pipelined processing architecture

3. **Convolution Stage 2**
   - Image-pattern convolution
   - Further feature map refinement

4. **MaxPooling Layer**
   - Spatial dimension reduction
   - Maximum value extraction

5. **Pattern Detection**
   - Thresholding
   - Pattern occurrence counting

## Preprocessing Requirements
- Input images must be 256x256 pixels
- 4-bit pixel representation
- Pattern size strictly 8x8 pixels

## Output
- Total number of pattern occurrences
