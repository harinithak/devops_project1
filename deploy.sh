#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u harinitha -p 21-Mar-05
    docker tag test harinitha/task_h
    docker push harinitha/task_h
    
