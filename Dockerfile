ARG VARIANT=3-bookworm
FROM python:${VARIANT}

ENV DL_INTERVAL=30

RUN python3 -m pip install --upgrade \
    mangadex-downloader

RUN mkdir -p /mangadex

COPY run.sh /mangadex/run.sh

RUN touch /mangadex/list.sh && chmod 777 /mangadex/run.sh /mangadex/list.sh
RUN chmod +x /mangadex/run.sh /mangadex/list.sh

# Run the command on container startup
CMD ["bash", "/mangadex/run.sh"]
