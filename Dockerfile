FROM python:3.12-slim
WORKDIR /app
COPY . /app/
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["streamlit", "run", "app.py", "--server.runOnSave=True", "--server.port=5000", "--server.address=0.0.0.0"]
