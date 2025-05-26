#!/bin/bash

# Create public/view directory if it doesn't exist
mkdir -p public/view

# Generate a secure random hash for the filename
HASH=$(openssl rand -hex 16)
FILENAME="$HASH.png"
FILEPATH="public/view/$FILENAME"

# Take a screenshot of a selected area
echo "Select an area to capture..."
screencapture -i "$FILEPATH"

# Check if screenshot was successful
if [ ! -f "$FILEPATH" ]; then
  echo "Screenshot was cancelled or failed."
  exit 1
fi

# Construct the URL
URL="https://screenshotz.pages.dev/view/$FILENAME"

# Copy URL to clipboard
echo "$URL" | pbcopy

# Display success message
echo "Screenshot saved: $FILEPATH"
echo "URL copied to clipboard: $URL"

# Commit and push the new screenshot file to the repository
echo "Committing and pushing changes to the repository..."
git add "$FILEPATH"
git commit -m "Add screenshot: $FILENAME"
git push

# Check if git operations were successful
if [ $? -eq 0 ]; then
  echo "Successfully committed and pushed changes to the repository."
else
  echo "Warning: Git operations failed. The screenshot is saved locally but not pushed to the repository."
fi
