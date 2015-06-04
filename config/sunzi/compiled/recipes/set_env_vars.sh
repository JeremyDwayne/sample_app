#set up rails specific environment variables
DEPLOY_HOME_PATH=/home/jeremydwayne
DEPLOY_ENV_FILE_PATH=$DEPLOY_HOME_PATH/.sample_app_env
if [ -e $DEPLOY_ENV_FILE_PATH ]; then
  echo "env already set, skipping."
else

	mv files/env_vars $DEPLOY_ENV_FILE_PATH 
	chown jeremydwayne:jeremydwayne $DEPLOY_ENV_FILE_PATH 
	chmod 600 $DEPLOY_ENV_FILE_PATH 
	echo "source ~/.sample_app_env" >> $DEPLOY_HOME_PATH/.bashrc
fi