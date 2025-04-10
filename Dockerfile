# بهینه‌سازی متغیرهای محیطی
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# دایرکتوری کاری
WORKDIR /code

# کپی و نصب پیش‌نیازها
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# کپی بقیه فایل‌های پروژه
COPY . .

# اجرای برنامه
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]