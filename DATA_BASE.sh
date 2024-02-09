#!/bin/bash

clear
ansible-playbook delet_data_foreign_key.yml -i 00_inventory.yml
ansible-playbook galera_cluster.yml -i 00_inventory.yml
ansible-playbook create_db_tables.yml -i 00_inventory.yml
ansible-playbook insert_data_foreign_key.yml -i 00_inventory.yml
ansible-playbook automate_backups.yml -i 00_inventory.yml
ansible-playbook -i 00_inventory.yml mysql_backup.yml
