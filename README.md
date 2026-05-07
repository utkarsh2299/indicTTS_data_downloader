# IndicTTS Dataset Downloader

A simple, server-friendly utility to download **latest monolingual datasets** from the IndicTTS database hosted by IIT Madras (as of 07/May/2026).

This repository helps avoid manual clicking of multiple “Latest” download buttons by enabling **bulk downloads using `wget`

---

## 🔗 Dataset Source

IndicTTS Database (IITM):
https://www.iitm.ac.in/donlab/indictts/database

> This repository does **not host any data**. It only provides download automation.

---

## ✨ Features

* Bulk download all datasets via a single command
* Resume interrupted downloads (`wget -c`)
* Designed for remote servers / SSH environments
* Easily extensible (add/remove datasets via `urls.txt`)

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

## Quick Start

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

## How It Works

1. The IndicTTS website provides datasets via individual **“Latest” download buttons**
2. These links are extracted and stored in `urls.txt`
3. The script uses:

```bash
wget -c -i urls.txt
```

to download all datasets automatically

---

## Adding / Updating Datasets

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

## Important Notes

* 📜 **License Compliance**:
  By downloading, you agree to the dataset license from IITM.


* 🌐 Ensure your server has:

  * Stable internet connection
  * Enough disk space (datasets are large)

---

## 🛠 Requirements

* `wget` (required)

Install if needed:

```bash
sudo apt install wget
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
