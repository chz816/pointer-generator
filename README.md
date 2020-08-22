# Pointer Generator Networks with TensorFlow 1.x
This repo is the TensorFlow 1.x implementation for the ACL 2017 paper "[Get To The Point: Summarization with Pointer-Generator Networks](https://arxiv.org/pdf/1704.04368.pdf)".

- The official released github repo with python 2: https://github.com/abisee/pointer-generator. 
- Also the python 3 version is here: https://github.com/becxer/pointer-generator/.

In this repo, I modify the code from @becxer and make the code executable in Python 3 + TensorFlow 1.x environment.

## Local Setup

Tested with Python 3.7 via virtual environment. In this repo, we use TensorFlow 1.15.2, and it also works in other TensorFlow 1.x enviorment.

Clone the repo, go to the repo folder, setup the virtual environment, and install the required packages:

```bash
$ python3.7 -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
```

## Data

According to the paper and its repo: the required data for paper is CNN/DM: you can find it [here](https://github.com/JafferWilson/Process-Data-of-CNN-DailyMail).

If you download the data by yourself, you can create a ```data``` folder inside your local folder, and put everything in ```data```.

You can also choose to download the data by running this:

```bash
$ gdown --id 0BzQ6rtO2VN95a0c3TlZCWkl3aU0 --output data.zip
$ unzip data.zip
$ mv finished_files data
```

```cnndm``` dataset is also available in ```tensorflow.datasets```. I am going to implement this later (in progress).

## Train the Model

```bash
$ chmod +x train.sh
$ ./train.sh
```



## Evaluation - Validation Set

To run the evaluation job, you can run the model on the validation set and log the loss.

### Beam Search - Find Best Model

```bash
$ chmod +x eval.sh
$ ./eval.sh
```

### Generate

```bash
$ chmod +x decode.sh
$ ./decode.sh
```
