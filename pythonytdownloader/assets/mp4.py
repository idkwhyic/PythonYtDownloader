import pytube
import sys

if len(sys.argv) < 2:
    url = input("Enter the URL of the video: ")
else:
    url = sys.argv[1]

yt = pytube.YouTube(url)

# You can use the title property of the YouTube object to get the title of the video
print("Video Title:", yt.title)

# You can use the streams property of the YouTube object to get a list of available streams
streams = yt.streams.filter(progressive=True, file_extension='mp4').all()

# Iterate through the streams and print their resolution and file size
for i, stream in enumerate(streams):
    print(i+1, "-", stream.resolution, "-", stream.filesize/1000000, "MB")

# Prompt the user to select a stream
selected_stream = int(input("Enter the number of the stream you want to download: "))

# Download the selected stream
streams[selected_stream - 1].download()
print("Download Complete!")
