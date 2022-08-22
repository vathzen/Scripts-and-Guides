#!/bin/bash

echo 'Cleaning Old Build Folder'

rm -rf build

npm run build

echo 'Sending files to Server'
echo
scp -i /home/zen/adminKey.pem -r build ubuntu@vathzen.in:/home/ubuntu
echo
echo 'Restarting nginx'

ssh -i /home/zen/adminKey.pem ubuntu@vathzen.in 'sudo systemctl restart nginx'

echo 'Done'