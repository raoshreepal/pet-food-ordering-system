
# 🐾 PetWeb – Online Pet Food Ordering Website

PetWeb is a simple yet functional **online pet food ordering website** built using Django with **function-based views (FBV)**.  
It allows users to browse pet food products, add them to the cart, and place orders easily.

---

## 📌 Features
- 🐶 Browse different categories of pet food  
- 🛒 Add products to cart  
- 📦 Place online orders (Cash on Delivery / Online Payment integration ready)  
- 📱 Mobile-friendly responsive design  
- 📊 Simple admin panel for product & order management  

---

## 🛠 Tech Stack
- **Backend:** Django (Function-Based Views)  
- **Frontend:** HTML, CSS, Bootstrap  
- **Database:** SQLite (default) or MySQL (optional)  
- **Other:** jQuery for interactivity  

---

## 📂 Project Structure

```
PetWeb/
│── petweb/              # Main Django project
│── application/                # App for products & orders
│── templates/           # HTML templates
│── static/              # CSS, JS, Images
│── screenshots/         # Project screenshots
│── manage.py

````

---

## 🚀 Installation & Setup

### 1️⃣ Clone the Repository

git clone https://github.com/raoshreepal/pet-food-ordering-system.git
cd petweb


### 2️⃣ Create Virtual Environment


python -m venv venv
source venv/bin/activate   # Mac/Linux
venv\Scripts\activate      # Windows


### 3️⃣ Install Dependencies


pip install -r requirements.txt


### 4️⃣ Apply Migrations


python manage.py makemigrations
python manage.py migrate


### 5️⃣ Create Superuser (Admin)


python manage.py createsuperuser


### 6️⃣ Run Server


python manage.py runserver


Now open **[http://127.0.0.1:8000](http://127.0.0.1:8000)** in your browser.



## 📷 Screenshots

### 🏠 Home Page

![Home Page](screenshorts/home-page.png)



## 📈 Future Improvements

* Online payment gateway integration
* User profile & order history
* Product reviews and ratings
* Email/SMS order confirmation


## 👨‍💻 Author

**Rao Shreepal**

* [LinkedIn](https://www.linkedin.com/in/rao-shreepal-b8983a207/)
* [GitHub](https://github.com/raoshreepal)

---


## 📝 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
