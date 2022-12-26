##Dockerfile.weather
FROM python:3.8.10
# dependencies:
WORKDIR .
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5000
# Run the application:
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
