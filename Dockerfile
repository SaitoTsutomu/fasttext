FROM tsutomu7/gensim

WORKDIR /root
COPY fasttext.py /root
RUN wget https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/xaa && \
    wget https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/xab && \
    wget https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/xac && \
    wget https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/xad && \
    wget https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/xae && \
    wget https://raw.githubusercontent.com/Tsutomu-KKE/fasttext/master/xaf && \
    cat xaa xab xac xad xae xaf > model.bin.bz2 && \
    rm xa? && \
    bzip2 -d model.bin.bz2
ENTRYPOINT ["python", "fasttext.py"]
