# Image Recognition Model using Convolutional Neural Networks (CNN) 

## Project Overview 
This repository contains the implementation of an **image recognition model** using a Convolutional Neural Network (CNN). The primary goal of this project is to detect the number of times a specific test pattern appears in given input images of varying sizes. 

### Key Features 
- **Pattern Detection:** Efficiently detects and counts occurrences of a pattern in input images
- **Multi-Size Support:** Implemented for both 128x128 and 256x256 image sizes
- **Low Bit-Depth Handling:** Optimized for 4-bit image representations
- **CNN Architecture:** Incorporates convolutional layers, max pooling, and thresholding for accurate detection
- **Performance Optimizations:** 
  - Pipelined convolution stages for faster processing
  - Direct comparison for thresholding to avoid sorting overhead

## Implementation Details 

### Methodology 
The system is implemented in multiple stages: 
1. **Convolution with Laplacian Filter:** 
   - Input image and test pattern are convolved with a Laplacian filter to extract feature maps
   - Pipelined hardware implementation ensures efficient processing
2. **Image-Pattern Convolution:** 
   - Feature maps of the input image and test pattern are further convolved
3. **Max Pooling Layer:** 
   - Reduces the spatial dimensions of the output feature map by a factor of 2
4. **Thresholding and Counting:** 
   - Detects the pattern by comparing the convolution result with a predefined threshold

### Image Size and Thresholding Considerations
- **Image Sizes Supported:** 
  - 128x128 pixels
  - 256x256 pixels
- **Bit Depth:** 4-bit image representation
- **Threshold Variation:** 
  - The threshold value increases with image size
  - For the same pattern, a 256x256 image requires a higher threshold compared to a 128x128 image
  - This adjustment accounts for the increased complexity and potential match variations in larger images

### Results 
- Input and test patterns are stored in `.data` files (e.g., `image1.data` and `pattern.data`)
- Outputs include the count of detected patterns and visual highlights of detection locations

## Repository Structure 
- **`Convolution Stage 1/`**: Implementation of the first stage (Laplacian filter convolution)
- **`Convolution Stage 2/`**: Implementation of the second stage (image-pattern convolution)
- **`MaxPooling/`**: Implementation of the max pooling layer
- **`Test Files/`**: Contains example input images (128x128 and 256x256) and test pattern files in `.data` format
- **`Simulation Outputs/`**: Outputs from simulations demonstrating pattern detection and counting


## Acknowledgment 
This project is inspired by the repository [Convolutional-Neural-Network](https://github.com/AniketBadhan/Convolutional-Neural-Network) by **AniketBadhan**. Due to the original repository being inactive, additional modifications and missing implementations were added to complete the system. The contributions from the original work are acknowledged. 

## Report 
For a detailed explanation of the implementation, methodology, and results, refer to the included [Project Report](https://github.com/AniketBadhan/Convolutional-Neural-Network/blob/master/CNN%20Project%20Report.pdf). 

