cls
echo off

echo -------------------------------------------------
echo AP 3D
python ap.py car_detection_3d.txt
python ap.py pedestrian_detection_3d.txt
python ap.py cyclist_detection_3d.txt

echo ------------------------------------------------- 
echo AP bird's eye
python ap.py car_detection_ground.txt
python ap.py pedestrian_detection_ground.txt
python ap.py cyclist_detection_ground.txt

echo -------------------------------------------------
echo AP 2D
python ap.py car_detection.txt
python ap.py pedestrian_detection.txt
python ap.py cyclist_detection.txt
