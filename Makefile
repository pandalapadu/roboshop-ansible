#default:
#	git pull
#	 #ansible-playbook -i $(app_name)-dev.azdevopsvenkat.site, -e ansible_user=azureuser -e ansible_password=azureuser@123 -e app_name=$(app_name) roboshop.yml
#	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i $(app_name)-dev.azdevopsvenkat.site, -e ansible_user=azureuser -e ansible_password=azureuser@123 -e app_name=$(app_name) roboshop.yml
## File: Makefile

default:
	git pull
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i $(app_name)-dev.azdevopsvenkat.site, \
		-e ansible_user=azureuser \
		-e ansible_password=azureuser@123 \
		-e app_name=$(app_name) \
		roboshop.yml
