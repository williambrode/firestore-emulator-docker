ARG GCLOUD_SDK_VERSION=271.0.0-alpine

FROM google/cloud-sdk:$GCLOUD_SDK_VERSION

RUN gcloud components install cloud-firestore-emulator beta --quiet

COPY entrypoint.sh .

ENV PORT 8080
EXPOSE "$PORT"

ENTRYPOINT ["./entrypoint.sh"]
