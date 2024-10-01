FROM python:latest
# it can use the existing image or can pull image from docker hub.
LABEL name=thananya
LABEL email=tandevsecops@gmail.com
# label is optional but you can share your contact details to other teams.
RUN pip install Flask==3.0.3
# to make any changesin existing image like installing software etc.
RUN mkdir /opt/tanwebapp
COPY . /opt/tanwebapp/
# created a directory and copied the code
# copy will be checking the .dockerignore to not copy.
WORKDIR /opt/tanwebapp/
# changing current location like cd command
CMD ["python", "tan-webapp.py"]
# to choose default process whihc can be replaced by user while container creation.