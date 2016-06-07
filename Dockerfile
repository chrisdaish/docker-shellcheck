FROM haskell:7.10.3

MAINTAINER Chris Daish <chrisdaish@gmail.com>

ENV shellcheckVersion 0.4.4
ENV shellcheckTag v$shellcheckVersion

ADD https://github.com/koalaman/shellcheck/archive/v0.4.4.tar.gz /tmp/shellcheck.tar.gz

RUN useradd shellcheck

USER shellcheck

RUN cabal update \
    && tar zxf /tmp/shellcheck.tar.gz -C /tmp/ \
    && rm /tmp/shellcheck.tar.gz \
    && cabal install /tmp/shellcheck-$shellcheckVersion \
    && rm -rf /tmp/shellcheck-$shellcheckVersion

CMD ["/home/shellcheck/.cabal/bin/shellcheck", "-s", "bash", "/tmp/FileToBeChecked"]
