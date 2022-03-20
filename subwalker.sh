#!/usr/bin/env bash
# m8sec

TARGET=$1
if ! [ $TARGET ]; then
  echo "[!] No target provided."
  echo ">> $0 <example.com>"
  exit 1
fi

OUT_DIR=$(pwd)
TOOLS_DIR=$(pwd)/tools

echo [*] Executing SubWalker against: ${TARGET}


# Modify the individual commands as needed, add API keys and other resources to
# get the best results. Happy Hunting!

cd $TOOLS_DIR/subscraper
echo "[*] Launching SubScraper"
python3 subscraper.py $TARGET -o $OUT_DIR/subscraper.txt &> /dev/null &

cd $TOOLS_DIR/Sublist3r
echo "[*] Launching Sublist3r"
python3 sublist3r.py -d $TARGET -o $OUT_DIR/sublist3r.txt &> /dev/null &

cd $TOOLS_DIR/assetfinder
echo "[*] Launching assetfinder"
./assetfinder --subs-only $TARGET > $OUT_DIR/assetfinder.txt &

echo "[*] Waiting until all scripts complete..."
wait

cd $OUT_DIR
(cat subscraper.txt sublist3r.txt assetfinder.txt | sort -u) > subwalker.txt
rm subscraper.txt sublist3r.txt assetfinder.txt

RES=$(cat subwalker.txt | wc -l)
echo -e "\n[+] SubWalker complete with ${RES} results"
echo "[+] Output saved to: $OUT_DIR/subwalker.txt"
exit 0
