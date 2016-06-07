#FROM fedora:21
FROM haskell:7.10.3

MAINTAINER Chris Daish <chrisdaish@gmail.com>

ENV shellcheckVersion 0.4.4
ENV shellcheckTag v$shellcheckVersion

#ADD https://github.com/koalaman/shellcheck/archive/$shellcheckTag.tar.gz /tmp/shellcheck-$shellcheckTag.tar.gz
ADD https://github.com/koalaman/shellcheck/archive/v0.4.4.tar.gz /tmp/shellcheck.tar.gz

RUN cabal update \
    && tar zxf /tmp/shellcheck.tar.gz -C /tmp/ \
    && rm /tmp/shellcheck.tar.gz \
    && cabal install /tmp/shellcheck-$shellcheckVersion \
#    && rm -rf /tmp/shellcheck-$shellcheckVersion

#RUN useradd shellcheck; \
#    yum install --setopt=tsflags=nodocs --nogpgcheck --assumeyes --quiet  cabal-install \
#                                                                          tar \
#    && yum clean all \
#    && rm -rf /var/cache/yum

#USER shellcheck

#RUN cabal update \
#    && curl -Lso /tmp/shellcheck-$shellcheckTag.tar.gz https://github.com/koalaman/shellcheck/archive/$shellcheckTag.tar.gz \
#    && tar zxf /tmp/shellcheck-$shellcheckTag.tar.gz -C /tmp/ \
#    && rm /tmp/shellcheck-$shellcheckTag.tar.gz \
#    && cabal install --only-dependencies -j4 /tmp/shellcheck-$shellcheckVersion \
#    && rm -rf /tmp/shellcheck-$shellcheckVersion

#CMD ["/home/shellcheck/.cabal/bin/shellcheck", "-s", "bash", "/tmp/FileToBeChecked"]
CMD ["sh"]
