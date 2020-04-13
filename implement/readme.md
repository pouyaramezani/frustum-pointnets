# Implementation of paper P08  
  
### Problem: An in test.py line 231  
TabError: inconsistent use of tabs and spaces in indentation
#### solved  
  
### Ploblem: ./scripts/command_test_v1.sh  
deny permission  
#### solution
chmod +x ./scripts/command_test_v1.sh  
  
### Problem: importing cPickle
related to python v2-v3  
#### soloution:  
cPickle -> pickle  
  
### Problem: Line 131, provider.py  
pickle error : UnicodeDecoderError  
#### soloution:  
It is addresesd in issue #55 in master branch  
adding encoding='latin1' to some of pickle.load   
  
### Problem: Tensorflow missing some libraries such as libnvinfcr.so.6  
#### solution  
pip uninstall tensorflow-gpu  
conda install tnsorflow  

### Problem:  model_util.py line 175 , module 'tensorflow' has no attribute 'placeholder'   
#### solution  
import tensorflow.compat.v1 as tf   
tf.disable_v2_behavior()  
Or uninstall tensorflow v2 and instal tensorflow v1 !  
both solutions have problem:  
first: AttributeError: module 'tensorflow_core.compat.v1' has no attribute 'contrib'  
second: many warnings  
keras.initializers.glorot_normal() instead of tf.contrib.layer.initializer.xavier  





