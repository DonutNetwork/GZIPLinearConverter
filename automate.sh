git clone https://github.com/DonutNetwork/GZIPLinearConverter.git
mv GZIPLinearConverter/* .
rm -R GZIPLinearConverter
apt install python3-pip
pip3 install -r requirements.txt
chmod +x convert_region_files.py
mv ./world/region ./world/oldformat
mkdir ./world/region
./convert_region_files.py mca2linear ./world/oldformat/ ./world/region --threads 16
