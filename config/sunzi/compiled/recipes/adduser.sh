#add deploy user

if [ -d /home/jeremydwayne ]; then
	echo "User already created skipping"
else
	useradd jeremydwayne -m -s /bin/bash
	usermod -a -G sudo jeremydwayne
	mkdir /home/jeremydwayne/.ssh
	mv files/deploy_key /home/jeremydwayne/.ssh/authorized_keys
	chown -R jeremydwayne:jeremydwayne /home/jeremydwayne/.ssh
	chmod 400 /home/jeremydwayne/.ssh/authorized_keys
fi