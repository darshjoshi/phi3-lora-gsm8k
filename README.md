# 🧠 Distilled Reasoning: Fine-Tuning Phi-2 on GSM8K with LoRA

This project demonstrates how to fine-tune Microsoft’s Phi-2 language model on the GSM8K dataset using parameter-efficient LoRA adapters and evaluate it using the `lm-eval-harness` framework.

---

## 📌 Project Highlights

* Fine-tuned `microsoft/phi-2` on 10K+ math word problems from the GSM8K dataset
* Applied Low-Rank Adaptation (LoRA) for lightweight, fast training
* Evaluated on GSM8K and other benchmarks using `lm_eval`
* Compared base model vs LoRA model generation side-by-side

---

## 🛠️ Setup

### 🔗 Installation

```bash
pip install -r requirements.txt
```

Or open and run in Google Colab via `notebooks/fine_tune_phi2_lora.ipynb`

### 🧾 Requirements (in requirements.txt)

* transformers
* datasets
* peft
* accelerate
* bitsandbytes
* lm-eval

---

## 📁 Project Structure

```
phi2-lora-gsm8k/
├── data/                          # Preprocessed GSM8K dataset
├── model/                         # LoRA fine-tuned model and tokenizer
├── notebooks/
│   └── fine_tune_phi2_lora.ipynb # End-to-end notebook
├── results/                       # Evaluation outputs
├── scripts/                       # Shell/python automation
├── process/                       # wandb.ai screenshot
├── report/                        # Project PDF summary
└── README.md                      # This file
```

---

## 📊 Evaluation Example

### Run LM Eval:

```bash
bash scripts/run_lm_eval.sh
```

Expected output on GSM8K (200 samples):

```
Exact Match (strict): 56.00%
Standard Error:       ±3.5%
```

---

## 📎 Key Files

* `data/distilled_gsm8k_local.jsonl` — GSM8K converted to Q/A pairs
* `scripts/run_lm_eval.sh` — Batch evaluation script
* `scripts/compare_base_lora.py` — Compare output generations
* `report/project_summary.pdf` — Full 2-page summary

---

## ✅ Results Summary

* LoRA fine-tuned model outperformed base Phi-2 on math reasoning
* Inference was faster and more structured
* lm-eval metrics logged and analyzed

---

## 📚 Acknowledgements

* [Microsoft Research](https://www.microsoft.com/en-us/research/) for Phi-2
* [OpenAI](https://openai.com) for GSM8K
* [Hugging Face](https://huggingface.co) for Transformers, Datasets, PEFT
* [EleutherAI](https://github.com/EleutherAI/lm-eval-harness) for lm-eval-harness

---

## 🚀 Future Work

* Add GPT-4-based distilled dataset for stronger supervision
* Extend benchmark coverage (SVAMP, AquaRAT, MATH)
* Push model to Hugging Face Hub
* Add Gradio/Spaces demo for interactive usage

---

## 👤 Author

Darsh Joshi
AI Engineer & Adjunct Professor, Pace University
Project created for research showcase and AI reasoning benchmarks.
