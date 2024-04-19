import cv2

def resize_image(source_image_path, target_image_path):
    source_image = cv2.imread(source_image_path)
    target_image = cv2.imread(target_image_path)

    # Get the dimensions of the target image
    target_height, target_width, _ = target_image.shape

    # Resize the source image to match the dimensions of the target image
    resized_image = cv2.resize(source_image, (target_width, target_height))

    # Save the resized image
    cv2.imwrite(target_image_path, resized_image)

# Usage example
source_image_path = "path/to/source/image.jpg"
target_image_path = "path/to/target/image.jpg"
resize_image(source_image_path, target_image_path)