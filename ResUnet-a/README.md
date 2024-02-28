# Brief Description of the ResUNet-a Model

The ResUNet-a model represents a significant advancement in the field of semantic segmentation, particularly in processing remotely sensed data. It integrates the robust features of Residual Networks (ResNets) with the U-Net architecture, creating a powerful model for pixel-wise classification tasks. This architecture is designed to effectively capture spatial hierarchies and context, which is crucial for accurately delineating plot boundaries in aerial or satellite imagery.

Key features of the ResUNet-a model include:

- Enhanced feature extraction capabilities through the use of residual connections, which help in mitigating the vanishing gradient problem, allowing for deeper network architectures.
- A U-Net based architecture that utilizes a symmetric encoder-decoder structure. This design enables the model to capture both high-level semantic information and low-level spatial details, essential for achieving high precision in segmentation tasks.
- The model has been tailored for the semantic segmentation of remotely sensed data, making it particularly suitable for applications in agriculture, land use classification, and environmental monitoring.

This model's implementation and the accompanying instructions for usage, model training, and predictions are detailed in the original repository, enabling users to apply this advanced framework to their own segmentation tasks.

This repository contains implementation of the paper "ResUNet-a: a deep learning framework for semantic segmentation of remotely sensed data" in TensorFlow for the detection of plot boundaries specifically.

## Usage

1. Clone this repo using :
```
git clone https://github.com/Akhilesh64/ResUnet-a
``` 
2. Install the requirements using :
```
pip install -r requirements.txt
```
3. To start model training run the main.py file with following arguments :
```
python main.py --image_size 256 --batch_size 8 --num_classes 2 --validation_split 0.2 --epochs 100 --image_path ./images --gt_path ./gt --layer_norm batch --model_save_path ./ --checkpoint_mode epochs
```
4. To produce model predictions on a directory of test images run script predict.py with the following arguments :
```
python predict.py --image_size 256 --num_classes 2 --image_path ./test --model_path ./model.h5 --output_path ./results
```

## Results

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Original Image** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Groundtruth** 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **Predicted** 

![img1](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/images/polygon_1.png) &nbsp;&nbsp;&nbsp; ![gt1](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/gt/polygon_1.png) &nbsp;&nbsp;&nbsp; ![result1](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/results/polygon_1.png)


![img2](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/images/polygon_16.png) &nbsp;&nbsp;&nbsp; ![gt2](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/gt/polygon_16.png) &nbsp;&nbsp;&nbsp; ![result2](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/results/polygon_16.png)


![img3](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/images/polygon_46.png) &nbsp;&nbsp;&nbsp; ![gt3](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/gt/polygon_46.png) &nbsp;&nbsp;&nbsp; ![result3](https://raw.githubusercontent.com/Akhilesh64/ResUnet-a/main/results/polygon_46.png)

### Citation and Original Work

The development and success of this model are credited to the authors of the "ResUNet-a: A deep learning framework for semantic segmentation of remotely sensed data" paper. Users who find this model beneficial for their research or projects are encouraged to cite the original work:

```bib
@article{DIAKOGIANNIS202094,
title = "ResUNet-a: A deep learning framework for semantic segmentation of remotely sensed data",
journal = "ISPRS Journal of Photogrammetry and Remote Sensing",
volume = "162",
pages = "94 - 114",
year = "2020",
issn = "0924-2716",
doi = "https://doi.org/10.1016/j.isprsjprs.2020.01.013",
url = "http://www.sciencedirect.com/science/article/pii/S0924271620300149",
author = "Foivos I. Diakogiannis and François Waldner and Peter Caccetta and Chen Wu",
keywords = "Convolutional neural network, Loss function, Architecture, Data augmentation, Very high spatial resolution"
}