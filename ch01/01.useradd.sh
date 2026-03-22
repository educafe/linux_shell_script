sudo useradd -m kim -s /bin/bash
sudo useradd -m park -s /bin/bash

sudo chpasswd <<< "kim:kim"
sudo chpasswd <<< "park:park"