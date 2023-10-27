import os
import requests
import ctypes

def download_image(url, path):
    try:
        response = requests.get(url)
        with open(path, "wb") as f:
            f.write(response.content)
        return True
    except:
        return False

# URL of the image you want to set as the background
image_url = "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg"

# Local path to save the downloaded image
image_path = "background.jpg"

# Download the image
if download_image(image_url, image_path):
    # Set the downloaded image as the desktop background
    SPI_SETDESKWALLPAPER = 20
    ctypes.windll.user32.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, os.path.abspath(image_path) , 0)
    print("Background set successfully.")
else:
    print("Failed to download the image.")
