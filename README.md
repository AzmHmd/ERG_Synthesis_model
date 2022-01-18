# ERG_Synthesis_model
Pytorch implementation of our method for high-resolution HE histology images. This model is based on Generative Adversarial Networks (GAN) that, from an input H&E image, can generate a synthetic Erythroblast Transformation specific related gene (ERG) stained image, highlighting vessel structures. <br><br>

To use this model, follow the steps bellow.

## Prerequisites
- Linux or macOS
- Python 3
- NVIDIA GPU (11G memory or larger) + CUDA cuDNN

## Getting Started
### Installation
- Install PyTorch and dependencies from http://pytorch.org
- Install python libraries [dominate](https://github.com/Knio/dominate).
```bash
pip install dominate
```
- Clone this repo:
```bash
git clone https://github.com/AzmHmd/ERG_Synthesis_model.git
cd ERG_Synthesis_model
```

### Training
- Train a model at 1024 x 512 resolution (`bash ./scripts/train_512p.sh`):
```bash
#!./scripts/train_512p.sh
python train.py --name label2city_512p
```
- To view training results, please checkout intermediate results in `./checkpoints/label2city_512p/web/index.html`.


### Testing
- Test the model (`bash ./scripts/test_1024p.sh`):
```bash
#!./scripts/test_1024p.sh
python test.py --name label2city_1024p --netG local --ngf 32 --resize_or_crop none
```

## Citation

If you find this useful for your research, please use the following.

```
@inproceedings{wang2018pix2pixHD,
  title={Automated Quantification Of Blood Microvessels In Hematoxylin And Eosin Whole Slide Images},
  author={A Hamidinekoo, A Kelsey, N Trahearn, J Selfe, J Shipley, Y Yuan},  
  booktitle={MICCAI Workshop on Computational Pathology},
  year={2021}
}
```

## Acknowledgments
This code borrows heavily from [High-Resolution Image Synthesis and Semantic Manipulation with Conditional GANs](https://github.com/chenxli/High-Resolution-Image-Synthesis-and-Semantic-Manipulation-with-Conditional-GANsl-).
