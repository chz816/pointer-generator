python run_summarization.py \
  --mode=decode \
  --input_file=./data/chunked/test_* \
  --output_dir=./log/ \
  --vocab_path=./data/vocab \
  --single_pass=True \
  --generate=True \
