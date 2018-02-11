#!/usr/bin/env python3
# -*- coding:utf-8 -*-
from flask import Flask, jsonify, abort, make_response, request


app = Flask(__name__)

tasks = [
            {
                'id': 1,
                'description': 'python programming',
                'title': 'python language.',
                'done': False
            },
            {
                'id': 2,
                'description': 'python & Flask webFramework.',
                'title': 'flask web framework.',
                'done': False
            }
        ]


@app.route('/')
def index():
    return '<h2>flask api</h2>'


@app.route('/todo-api/get_all_tasks', methods=['GET'])
def get_all_tasks():
    return jsonify({'status': '200 ok.', 'tasks_list': tasks})


@app.route('/todo-api/get_detail_task/<int:task_id>', methods=['GET'])
def get_detail_task(task_id):

    task = list(filter(lambda t: t['id'] == task_id, tasks))

    if len(task) == 0:
        abort(404)

    return jsonify({'status': '200 ok.', 'task': task[0]})


@app.route('/todo-api/add_task', methods=['POST'])
def add_task():
    if not request.json or not 'title' in request.json:
        abort(400)

    task = {
                'id': tasks[-1]['id'] + 1,
                'description': request.json.get('description', ''),
                'title': request.json['title'],
                'done': False
           }

    tasks.append(task)

    return jsonify({'task': taks, 'stauts': 'ok.'}), 201



@app.route('/todo-api/update_task/<int:task_id>', methods=['PUT'])
def update_task(task_id):
    task = list(filter(lambda t: t['id'] == task_id, tasks))

    if len(task) == 0:
        abort(404)

    if not request.json:
        abort(400)

    if 'title' in request.json and type(request.json['title']) != unicode:
        abort(400)

    if 'desciption' in reqeust.json and type(request.json['description']) is not unicode:
        abort(400)

    if 'done' in request.json and type(request.json['done']) is not bool:
        abort(400)

    task[0]['title'] = request.json.get('title', task[0]['title'])
    task[0]['description'] = request.json.get('description', task[0]['description'])
    task[0]['done'] = request.json.get('done', task[0]['done'])

    return jsonify({'task': task[0]})


@app.route('/todo-api/delete_task/<int:task_id>', methods=['DELETE'])
def delete_task(task_id):
    task = list(filter(lambda t: t['id'] == task_id, tasks))

    if len(task) == 0:
        abort(404)

    tasks.remove(task[0])

    return jsonify({'status': True})

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not Found'}), 404)


if __name__ == '__main__':
    app.run(debug=True)

