#!/bin/bash

rm -rf compiler && \
mkdir -p compiler/bin && \
mkdir build && \
mkdir -p compiler/libs && \
wget 'https://c9x.me/compile/release/qbe-1.2.tar.xz' && \
mv 'qbe-1.2.tar.xz' ./compiler && \
echo 'sha256 validation:' && \
echo 'a6d50eb952525a234bf76ba151861f73b7a382ac952d985f2b9af1df5368225d compiler/qbe-1.2.tar.xz' | sha256sum -c  && \
tar -xf 'compiler/qbe-1.2.tar.xz' -C compiler/libs && \
cd 'compiler/libs/qbe-1.2' && make && cd ../../.. && \
pwd && \
mv 'compiler/libs/qbe-1.2/qbe' compiler/bin/qbe && \
git clone https://git.sr.ht/~sircmpwn/harec compiler/libs/harec && \
cp harec_config.mk compiler/libs/harec/config.mk && \
cd compiler/libs/harec && \
make && make install && \
echo DONE
