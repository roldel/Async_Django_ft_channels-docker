#Django and deps install

pip install --upgrade pip
pip install django
pip install -U 'channels[daphne]'

#Project initialization
cd /target
python -m django startproject mysite
cd mysite
python3 manage.py startapp chat

# Redis setup
pip install channels_redis