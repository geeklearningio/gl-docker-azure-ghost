FROM ghost:alpine
ADD /BaltimoreCyberTrustRoot.crt /var/lib/ghost/BaltimoreCyberTrustRoot.crt
ADD /node_modules/ghost-azure-blob-storage /var/lib/ghost/content/adapters/storage/azureblobstorage
ADD /node_modules /var/lib/ghost/content/adapters/storage/azureblobstorage/node_modules
COPY --from=ghost:alpine /var/lib/ghost/current/index.js /var/lib/ghost/current/index.core.js
ADD /index.js /var/lib/ghost/current/index.js
RUN mkdir /home/ghost && mkdir /home/ghost/themes && ln -s /var/lib/ghost/content/themes /home/ghost/themes