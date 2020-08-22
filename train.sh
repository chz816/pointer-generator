python run_summarization.py \
  --mode=train \
  --input_file=./data/chunked/train_* \
  --vocab_path=./data/vocab \
  --output_dir=./log/ \
  --learning_rate=0.15 \
  --num_train_steps=100 \
  --max_enc_steps=100 \
  --single_pass=False \