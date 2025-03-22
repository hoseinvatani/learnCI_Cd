# استفاده از یک تصویر پایه سبک JDK 17
FROM openjdk:17-jdk-slim

# تعیین دایرکتوری کاری داخل کانتینر
WORKDIR /app

# کپی کردن فایل JAR ساخته شده به داخل کانتینر
COPY target/LearnCI_CD-0.0.1-SNAPSHOT.jar /app/app.jar

# مشخص کردن دستوری که برای اجرای اپلیکیشن استفاده می‌شود
CMD ["java", "-jar", "/app/app.jar"]
