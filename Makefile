# اسم الصورة (Image Name)
IMAGE_NAME=princess-store

# أمر بناء الصورة
build:
	docker build -t $(IMAGE_NAME) .

# أمر تشغيل الحاوية
run:
	docker run -d -p 8080:80 --name $(IMAGE_NAME)-container $(IMAGE_NAME)

# أمر إيقاف وحذف الحاوية
stop:
	docker stop $(IMAGE_NAME)-container
	docker rm $(IMAGE_NAME)-container

# أمر لمسح الصورة بالكامل
clean:
	docker rmi $(IMAGE_NAME)