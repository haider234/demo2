## Edited
from celery import Celery
import time

app = Celery('tasks', broker='amqp://localhost')

@app.task
def add(x,y):
    time.sleep(10)
    return x+y