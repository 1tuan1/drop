# Get vanilla drupal 7.x and install
sudo drush dl drupal-7.x -y --destination=/usr/share/nginx --drupal-project-rename=htdocs
cd /usr/share/nginx/htdocs && sudo drush si standard -y --account-name=admin --account-pass=admin --db-url=mysql://admin:admin@localhost/admin --db-su=root --site-name="Drop"
# Replace the default vhost with our own.
sudo rm /etc/nginx/sites-available/default
sudo ln -s /usr/share/nginx/init/default /etc/nginx/sites-available/default
