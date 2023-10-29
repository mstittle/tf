FROM tensorflow/tensorflow:latest-gpu

WORKDIR /tf  # This specifies the directory to work

RUN pip install --upgrade pip

COPY requirements.txt ./

RUN pip install --upgrade -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--no-browser"]
