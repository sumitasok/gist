obj, created = Person.objects.get_or_create(first_name='John', last_name='Lennon',
                  defaults={'birthday': date(1940, 10, 9)})

# https://docs.djangoproject.com/en/1.4/ref/models/querysets/#get-or-create
# http://stackoverflow.com/questions/1941212/correct-way-to-use-get-or-create
