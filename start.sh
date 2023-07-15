if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gowdru123/DemoBot1.git /DemoBot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DemoBot1
fi
cd /DemoBot1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
