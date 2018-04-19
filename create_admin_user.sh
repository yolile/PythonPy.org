echo 'aaa'
echo $ADMIN_PASSWORD
echo 'bbb'
echo "from django.contrib.auth.models import User; import os;
if not User.objects.filter(email=os.environ['ADMIN_EMAIL']):
    User.objects.create_superuser(os.environ['ADMIN_USER'], os.environ['ADMIN_EMAIL'], os.environ['ADMIN_PASSWORD']);" | python manage.py shell
