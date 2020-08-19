# cdc bi-direction incremental sync MySQL data

get source code
----------------
cd /ws/
git clone https://github.com/JonkeyGuan/cdc.git

setup mysql-1
-------------
open new termail

cd cdc/mysql-1
adjust ip address in below files under cdc/mysql-1/:
sink.json
sink-add.sh
sink-delete.sh
source.json
source-add.sh
source-delete.sh

docker-compose up

open new termail
setup mysql-1 source
./source-add.sh

setup mysql-2 sink
./sink-add.sh

setup mysql-2
-------------
open new termail

cd cdc/mysql-2
adjust ip address in below files under cdc/mysql-2/:
sink.json
sink-add.sh
sink-delete.sh
source.json
source-add.sh
source-delete.sh

docker-compose up

open new termail
setup mysql-2 source
./source-add.sh

setup mysql-1 sink
./sink-add.sh

verify
------
add/modify/delete data of table inventory.customers or inventory.addresses from mysql-1
verify same changes affect mysql-2

add/modify/delete data of table inventory.customers or inventory.addresses from mysql-2
verify same changes affect mysql-1
