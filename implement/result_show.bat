@echo OFF

SET i="%~1"
ECHO image/point clouds  number %i% :

copy C:\Users\pooya\Downloads\kitti\object\training\label_2\%i%.txt C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\label_2
copy C:\Users\pooya\Downloads\kitti\object\training\image_2\%i%.png C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\image_2
copy C:\Users\pooya\Downloads\kitti\object\training\calib\%i%.txt C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\calib
copy C:\Users\pooya\Downloads\kitti\object\training\velodyne\%i%.bin C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\velodyne


ECHO ground truth:
python prepare_data.py --demo --index %i%

ECHO result:
ren C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\label_2\%i%.txt %i%.bkp
copy C:\Users\pooya\OneDrive\Desktop\papers\Report\eval_result\train\detection_results_v1\data\%i%.txt C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\label_2
python prepare_data.py --demo --index %i%
del C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\label_2\%i%.txt
ren C:\Users\pooya\OneDrive\Documents\GitHub\frustum-pointnets\dataset\KITTI\object\training\label_2\%i%.bkp %i%.txt