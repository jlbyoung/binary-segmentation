mkdir data

# curl -L -o data/aug_sets.zip https://www.dropbox.com/sh/jicjri7hptkcu6i/AACHszvCyYQfINpRI1m5cNyta?dl=1 --silent 
# curl -L -o data/SegmentationClassAug.zip https://www.dropbox.com/s/oeu149j8qtbs1x0/SegmentationClassAug.zip?dl=1 --silent 

# unzip -qq data/aug_sets.zip -d data
# unzip -qq data/SegmentationClassAug.zip -d data
# rm data/*.zip

echo "Downloading PASCAL VOC 2012 dataset ..."
curl http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar --output data/voc.tar
echo "Downloading (Done)"

echo "Extracting files from the dataset tar file ..."
tar -xf data/voc.tar -C data
rm data/voc.tar
echo "Extracting (Done)"

# mv data/SegmentationClassAug data/VOCdevkit/VOC2012/SegmentationClassAug
# mv data/*.txt  data/VOCdevkit/VOC2012/ImageSets/Segmentation/
