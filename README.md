# IndicTTS Dataset Downloader

A simple, server-friendly utility to download **latest monolingual datasets** from the IndicTTS database hosted by IIT Madras.

This repository helps avoid manual clicking of multiple “Latest” download buttons by enabling **bulk downloads using `wget` or `aria2`**.

---

## 🔗 Dataset Source

IndicTTS Database (IITM):
https://www.iitm.ac.in/donlab/indictts/database

> This repository does **not host any data**. It only provides download automation.

---

## ✨ Features

* 📥 Bulk download all datasets via a single command
* 🔁 Resume interrupted downloads (`wget -c`)
* ⚡ Optional high-speed parallel downloads using `aria2`
* 🖥️ Designed for remote servers / SSH environments
* 🧩 Easily extensible (add/remove datasets via `urls.txt`)

---

## 📁 Repository Structure

```
.
├── download.sh        # Main download script
├── urls.txt           # List of dataset download links
├── indictts_latest_models/  # Output directory (created automatically)
├── .gitignore
└── README.md
```

---

## 🚀 Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/indictts-downloader.git
cd indictts-downloader
```

---

### 2. Make script executable

```bash
chmod +x download.sh
```

---

### 3. Run the downloader

```bash
./download.sh
```

All datasets will be saved in:

```
indictts_latest_models/
```

---

## ⚡ Faster Downloads (Recommended)

If you are working on a server with good bandwidth, use `aria2` for parallel downloads:

```bash
aria2c -x 16 -s 16 -i urls.txt -d indictts_latest_models
```

* `-x 16` → 16 connections per file
* `-s 16` → 16 parallel segments

---

## 🧾 How It Works

1. The IndicTTS website provides datasets via individual **“Latest” download buttons**
2. These links are extracted and stored in `urls.txt`
3. The script uses:

```bash
wget -c -i urls.txt
```

to download all datasets automatically

---

## ➕ Adding / Updating Datasets

To add new datasets:

1. Open `urls.txt`
2. Add new download links (one per line):

```
https://example.com/dataset1.zip
https://example.com/dataset2.zip
```

3. Re-run:

```bash
./download.sh
```

---

## ⚠️ Important Notes

* 📜 **License Compliance**:
  By downloading, you agree to the dataset license from IITM.

* 🔐 Some datasets may require:

  * Prior approval
  * Email request
  * License agreement

* 🌐 Ensure your server has:

  * Stable internet connection
  * Enough disk space (datasets are large)

---

## 🛠 Requirements

* `wget` (required)
* `aria2` (optional, for faster downloads)

Install if needed:

```bash
sudo apt install wget aria2
```

---

## 🤝 Contributing

Contributions are welcome!

You can:

* Add new dataset links
* Improve scripts (parallelism, filtering, etc.)
* Add automation for scraping download links

---

## 📌 Future Improvements

* [ ] Auto-scraper for latest links
* [ ] Language-wise selective download
* [ ] CLI interface (`--lang tamil`)
* [ ] Docker support
* [ ] HuggingFace mirror integration

---

## 📜 License

This project is licensed under the MIT License.

---

## 🙏 Acknowledgements

* IndicTTS Team, IIT Madras
* Open-source community tools (`wget`, `aria2`)

---

## ⭐ If this helped you

Consider starring ⭐ the repo to help others discover it.
