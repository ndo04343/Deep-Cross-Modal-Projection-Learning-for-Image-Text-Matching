# Deep Cross Modal Projection Learning for Image Text Matching

1. Get started

```shell
$ git clone https://github.com/ndo04343/Deep-Cross-Modal-Projection-Learning-for-Image-Text-Matching.git && \
  cd Deep-Cross-Modal-Projection-Learning-for-Image-Text-Matching && \
  docker-compose up -d
```

2. TensorBoard
[http://localhost:6006/](http://localhost:6006/)

3. Training

```shell
# training with config file
$ docker exec dcmpl python3 train.py --config config.json

# Multi-GPU 
$ python train.py --device 2,3 -c config.json
$ CUDA_VISIBLE_DEVICES=2,3 python train.py -c config.py
```