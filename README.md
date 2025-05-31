
<div align="center">
  <h1> Up.Img - A Robust Image Upscalar in Matlab</h1>
  <a class="header-badge" target="_blank" href="https://www.linkedin.com/in/khatoonintech/">
  <img src="https://img.shields.io/badge/style--5eba00.svg?label=LinkedIn&logo=linkedin&style=social">
  </a>
  

<sub>Author:
<a href="https://www.linkedin.com/in/Khatoonintech/" target="_blank">Ayesha Noreen</a><br>
<small> <i>#KhatoonInTech CE' 27 @BZU |Agentic AI & Automation Engr @ DevRolin | ByteWise Certified ML/DL Engineer|GSoC Contributor | SWEfellow: Confiniti. ,HeadStarterAI</i> </small>
</sub>
<br>
<br>
<br>

 ![portal ](./ORIGINAL%20vs%20UPSCALED.png)

</div>

---

# Image Enhancement using FFT and YCbCr Color Space in MATLAB

## Table of Contents

* [Overview](#overview)
* [Problem Statement](#problem-statement)
* [Solution Approach](#solution-approach)
* [Features](#features)
* [Prerequisites](#prerequisites)
* [Installation](#installation)
* [File Structure](#file-structure)
* [Usage](#usage)
* [How It Works](#how-it-works)
* [Output](#output)
* [Real-World Applications](#real-world-applications)
* [Future Improvements](#future-improvements)
* [License](#license)

---

## Overview

This project enhances the visual quality of an RGB image using Fast Fourier Transform (FFT) and YCbCr color space manipulation. It aims to improve the contrast and saturation without sacrificing the image's natural tone, producing a high-quality upscaled version of the original image.

---

## Problem Statement

Conventional methods of image enhancement either oversaturate or over-sharpen images, leading to unnatural outputs. There's a need for a method that selectively enhances only the luminance and chrominance components of an image for better visual appeal.

---

## Solution Approach

* Convert RGB image to YCbCr format.
* Apply high-pass filtering on the Y (luminance) channel using FFT for contrast enhancement.
* Boost saturation by scaling the Cr and Cb channels.
* Merge and convert back to RGB for final output.

---

## Features

* FFT-based contrast boosting (luminance only)
* Adaptive saturation scaling in chrominance channels
* Output comparison visualization
* Export of both enhanced image and visual comparison

---

## Prerequisites

* MATLAB R2020b or higher
* Image Processing Toolbox

---

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/KhatoonInTech/Image-Upscalar-in-MATLAB
   ```
2. Open MATLAB and navigate to the cloned folder.

---

## File Structure

```
Image-Upscalar-in-MATLAB/
├── fft_image_enhance.m          # Main image enhancement function
├── sample_image.png            # Example input image
├── OUTPUT.png                  # Enhanced output image
├── ORIGINAL vs UPSCALED.png   # Side-by-side comparison image
├── README.md                   # Project documentation
```

---

## Usage

1. Call the main function from MATLAB command window:

   ```matlab
   enhanced_img = fft_image_enhance('sample_image.png');
   ```
2. The enhanced image is saved as `OUTPUT.png`.
3. A comparison figure is exported as `ORIGINAL vs UPSCALED.png`.

---

## How It Works

* **YCbCr Conversion:** Separates image luminance (Y) and chrominance (Cb, Cr).
* **High-Pass Filtering:** Applied to Y channel using FFT and a Gaussian filter to enhance edges and contrast.
* **Saturation Scaling:** Cr and Cb channels are scaled to improve color vibrance.
* **Final Merge:** Enhanced Y, Cr, Cb are merged and converted back to RGB.

---

## Output

* `OUTPUT.png`: The final enhanced RGB image
* `ORIGINAL vs UPSCALED.png`: Side-by-side comparison of original and enhanced images

---

## Real-World Applications

* Mobile and web photo editors
* Low-light image post-processing
* Satellite and drone image clarity enhancement
* Preprocessing for computer vision models
* Restoration of archival or medical images

---

## Future Improvements

* Add GUI interface for interactive enhancement
* Allow batch processing of images
* Include noise reduction filters
* Real-time preview of enhancement effects

---

## 📝 License

This project is open-source and free to use for educational or research purposes.

---


<div align="center">
<h3>For any query/help ,please contact our developer:</h3>  
Developer : <a href="https://www.linkedin.com/in/Khatoonintech/" target="_blank">Ayesha Noreen</a><br>
   <small> ByteWise Certified ML/DL Engineer|GSoC Contributor | SWEfellow: Confiniti. ,HeadStarterAI </small>
<br> <a href="https://www.github.com/Khatoonintech/" target="_blank"> Don't forget to ⭐ our repo </a><br>


</div>

