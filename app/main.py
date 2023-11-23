from fastapi import FastAPI
from typing import Union
# import uvicorn

app = FastAPI()

@app.get("/")
def home():
    return {"API health check" : "OK"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}
    
# is we use this, use # CMD ["python", "./app/main.py"] in dockerfile
# if __name__ == '__main__':
    # uvicorn.run(app, port=8000, host= "0.0.0.0")