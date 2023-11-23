This repo demonstrates a simple way to dockerize a FAST API app.
* Uses pyenv and virtualenv
* Python 3.11.0  

<br/>

To build an image using docker (from within the project dir)  
`docker build -t fastapitest .`  
To run the container from the above image  
`docker run -p 8000:8000 fastapitest`
