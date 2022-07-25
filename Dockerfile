#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b F-ubot https://github.com/ferdihardiyansa/F-ubot /home/F-ubot/ \
    && chmod 777 /home/F-ubot \
    && mkdir /home/F-ubot/bin/

COPY ./sample_config.env ./config.env* /home/F-ubot/

WORKDIR /home/F-ubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
