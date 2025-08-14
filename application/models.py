from django.db import models


class UserProfile(models.Model):
    Full_name = models.CharField(max_length=100)
    Email = models.EmailField(unique=True)
    Animal_name = models.CharField(max_length=100)
    Password = models.CharField(max_length=100)

    def __str__(self):
        return self.email
    
class Feedback(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=15)
    subject = models.CharField(max_length=200)
    message = models.TextField()
