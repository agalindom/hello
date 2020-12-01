FROM python:3.7.3-stretch

# Copy source code to working directory
COPY . hello.py /app/

# Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Run app.py at container launch
CMD ["python", "hello.py"]