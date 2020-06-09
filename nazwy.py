import lxml
import urllib
from lxml import etree

with open("videos.txt") as file_in:
    lines = []
    for line in file_in:
        youtube = etree.HTML(urllib.urlopen(line).read())
        video_title = youtube.xpath("//span[@id='eow-title']/@title")
        with open("tut.txt", "a") as myfile:
            myfile.write(''.join(video_title))
