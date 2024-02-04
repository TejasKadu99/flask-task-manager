FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8025

CMD ["flask", "run", "--host=0.0.0.0", "--port=8025"]
