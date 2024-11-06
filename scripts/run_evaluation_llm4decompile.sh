#!/bin/bash

# workspace="$(pwd)"
# python $workspace/evaluation/run_evaluation_llm4decompile.py \
#     --model_path LLM4Binary/llm4decompile-1.3b-v2 \
#     --max_new_tokens 512 \
#     --testset_path $workspace/decompile-eval-executable-gcc-ghidra.json \
#     --repeat 1 \
#     --dtype bfloat16 \
#     --port 8080 \
#     --max_input_len 8000 \
#     --max_total_tokens 8512 \
#     --max_batch_prefill_tokens 36000 \
#     --num_shards 4 \
#     --num_workers 8 \

python run_evaluation_llm4decompile_vllm.py \
  --model_path LLM4Binary/llm4decompile-1.3b-v2 \
  --testset_path ../decompile-eval/decompile-eval-executable-gcc-ghidra.json.json \
  --gpus 8 \
  --max_total_tokens 8192 \
  --max_new_tokens 512 \
  --repeat 1 \
  --num_workers 16 \
  --gpu_memory_utilization 0.82 \
  --temperature 0
