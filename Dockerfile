FROM rclone/rclone:1.62

ENV PUID=1028
ENV PGID=100
ENV EXEC_SCRIPT=/config/rclone/sync_pcloud.sh

COPY start-sync.sh /usr/local/bin/

ENTRYPOINT [ "start-sync.sh" ]