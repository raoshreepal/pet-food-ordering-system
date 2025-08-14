import json
from django.contrib.auth import authenticate, login 
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.http import JsonResponse
from .models import UserProfile , Feedback
from django.core.exceptions import ObjectDoesNotExist
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import logout
from django.contrib.auth.decorators import login_required
def home(request):
     
    email = request.session.get('email')
    if email :
        records = UserProfile.objects.filter(Email=email)
        return render(request, 'index.html', {'email': email, 'records': records})
     
    else:
        return render(request,"index.html")
@csrf_exempt
def submit_feedback(request):
    if request.method == 'POST':
        received_json_data = json.loads(request.body.decode("utf-8"))
        name = received_json_data.get('name')
        email = received_json_data.get('email')
        contact = received_json_data.get('contact')
        subject = received_json_data.get('subject')
        message = received_json_data.get('message')
    
        Feedback.objects.create(name=name, email=email, phone=contact, subject=subject, message=message)
   
        return JsonResponse({'status': 200, 'message': 'Form submitted successfully'})
    else:
        # Return JSON response indicating method not allowed
        return JsonResponse({'status': 400, 'message': 'Method not allowed'})
def registration(request):
    if request.method == 'POST':
        fname = request.POST.get('full-name')
        email = request.POST.get('your-email')
        enm = request.POST.get('animal_name')
        ps = request.POST.get('password')
        confirm_password = request.POST.get('conform-password')
        
        # Dictionary to hold form values
        value = {
            'Full_name': fname,
            'Email': email,
            'Animal_name': enm,
            'Password': ps
        }
    
        # Check if full name is empty
        if not fname:
            error_message = "Full name is required."
            return render(request, 'registration.html', {'error': error_message, 'values': value})

        # Check if passwords match
        if ps != confirm_password:
            error_message = "Passwords do not match."
            return render(request, 'registration.html', {'error': error_message, 'values': value})

        # Check if email already exists
        if UserProfile.objects.filter(Email=email).exists():
            error_message = "Email is already in use."
            return render(request, 'registration.html', {'error': error_message, 'values': value})

        # Create UserProfile instance and save to database
        user_profile = UserProfile(
            Full_name=fname,
            Email=email,
            Animal_name=enm,
            Password=ps
        )
        user_profile.save()
        user = User.objects.create_user(username=email, email=email, password=ps)
        user.save()

        
        # Redirect to login page or any other desired page
        return redirect('login')

    return render(request, 'registration.html')

def login(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')

        try:
            # Query to check if the email and password match
            user = UserProfile.objects.get(Email=email, Password=password)
       
            # Start session and store user ID
            request.session['email'] = user.Email
            request.session.modified = True
           
            return redirect('home')
        
        except ObjectDoesNotExist:
            # User not found or password incorrect
            error_message = 'Enter Valid Details .'
            return render(request, 'login.html', {'error': error_message})

    return render(request, 'login.html')
# @login_required(login_url='login')
# def user_profile(request):  
#     email = request.session.get('email')
#     if email:
#         records = UserProfile.objects.filter(Email=email)
#         return render(request, 'index.html', {'records': records})
   
def logout_view(request):
    logout(request)
    return redirect('home')