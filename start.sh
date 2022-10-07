if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JoeykingTG/HislordshipTG /HislordshipTG
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HislordshipTG
fi
cd /HislordshipTG
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
