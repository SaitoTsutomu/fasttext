FROM tsutomu7/gensim

WORKDIR /root
COPY fasttext.py /root
RUN wget --no-check-certificate https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/model.bin && \
    bzip2 -d model.bin.bz2
ENTRYPOINT ["python", "fasttext.py"]
