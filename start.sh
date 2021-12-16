echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Professor-OS/PROFESSOR-VC-ROBOT /PTOFESSOR-VC-ROBOT
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Professor-OS/PROFESSOR-VC-ROBOT -b $BRANCH /PROFESSOR-VC-ROBOT
fi
cd /PROFESSOR-VC-ROBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
