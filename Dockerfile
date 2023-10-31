FROM python:alpine

WORKDIR /target

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python3"] 

CMD ["mysite/manage.py", "runserver", "0.0.0.0:8000"]