#!/usr/bin/env python3
"""
Utility functions for the backend.
"""
import tempfile
from pathlib import Path
from PIL import Image

# Utility function to combine images side by side
def combine_images_side_by_side(image_path1, image_path2):
    image1 = Image.open(image_path1)
    image2 = Image.open(image_path2)
    combined_width = image1.width + image2.width
    combined_height = max(image1.height, image2.height)
    combined_image = Image.new('RGB', (combined_width, combined_height))
    combined_image.paste(image1, (0, 0))
    combined_image.paste(image2, (image1.width, 0))
    return combined_image

# Utility function to create a temporary file with a given suffix
def create_temporary_file(suffix):
    return tempfile.NamedTemporaryFile(suffix=suffix, delete=False).name