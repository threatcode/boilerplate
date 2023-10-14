FROM ubuntu:zesty
WORKDIR /usr/share/
RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list \
	&& echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y --allow-unauthenticated git \
																	nmap \
																	hydra \
																	dnsen \
                                

# Cr3dOv3r script

RUN git clone https://github.com/D4Vinci/Cr3dOv3r.git
WORKDIR root/tools/Cr3dOv3r
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "Cr3d0v3r.py"]


# Hash-Buster script

RUN apk add --no-cache git py3-pip && git clone https://github.com/s0md3v/Hash-Buster.git
WORKDIR Hash-Buster

# Lighter alternative to installing make to run makefile
RUN cd Hash-Buster \
 cp hash.py /usr/local/bin/ \
 chmod +x /usr/local/bin/hash.py \
 pip3 install requests

ENTRYPOINT [ "hash.py" ]
CMD [ "-h" ]

# Photon add script

RUN apk add git && git clone https://github.com/s0md3v/Photon.git Photon
WORKDIR Photon
RUN pip install -r requirements.txt

VOLUME [ "/Photon" ]
# ENTRYPOINT ["sh"]
ENTRYPOINT [ "python", "photon.py" ]
CMD ["--help"]
