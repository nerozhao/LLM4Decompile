from datasets import load_dataset
import json

ds = load_dataset("LLM4Binary/decompile-ghidra-100k")

# 将数据集转换为列表格式
data_list = [
    {
        "instruction": item["instruction"],
        "output": item["output"]
    }
    for item in ds["train"]
]

# 保存为 JSON 文件
with open("decompile-ghidra-100k", "w", encoding="utf-8") as f:
    json.dump(data_list, f, ensure_ascii=False, indent=2)