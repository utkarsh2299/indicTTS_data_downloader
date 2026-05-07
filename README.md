IndicTTS Dataset Downloader

This repository provides a simple way to download all latest monolingual datasets from the IITM IndicTTS database using wget.

🔗 Source

Dataset: https://www.iitm.ac.in/donlab/indictts/database

⚡ Features
Bulk download using wget
Resume interrupted downloads (-c)
Server-friendly (no browser needed)
Easy to extend with more datasets
📦 Setup
git clone https://github.com/YOUR_USERNAME/indictts-downloader.git
cd indictts-downloader
chmod +x download.sh
🚀 Usage
./download.sh
📁 Output

All datasets will be downloaded into:

indictts_latest_models/
🧾 Notes
Ensure you have permission to use the dataset.
Some datasets may require acceptance of license terms.
Links were manually extracted from the "Latest" buttons.
⚡ Faster Download (Optional)

If you have aria2c:

aria2c -x 16 -s 16 -i urls.txt -d indictts_latest_models
