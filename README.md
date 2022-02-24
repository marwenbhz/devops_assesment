# DevOps Assignment 
Thank you for showing interest in becoming part of Verity Engineering.

The intention of this assignment is to showcase your skills and also to form a good base discussion after the deliverables are submitted.

As an Engineering team we believe that it's for the mutual benefit of both the team and the candidate to get a good taste of one another's way of work and thinking. This assignment is designed to serve this purpose as best as possible.

## Description

**Horme** - name inspired from the ancient Greek dog Horme best known for his eagrness. 

It is a tiny web server implementing a simple health check

Your goal is to package this application in such a way so that it can be easily deployed in the Cloud


### Requirements 

* Deployment should be packaged in such a way so that is fully compatible with a modern CI/CD tool e.g. ArgoCD,Flux,GitLab,Jenkins,Harness,Spinnaker

* Zero downtime during deployment

* Ability to rollback if needed

* Automated recovery in case of failure


#### Environment 

* Node 8+


## Deliverable 

To make things easier we believe that the deployment should be co-located with the rest of the app code.

1. Develop your solution in a separate folder zip it along with the assignment and email it to devops@verity.ch
2. Make sure to add a "How-to-Deploy" section in this *README* describing your solution.

### Tips 

*Start small,Think Big*

There will always be a number of things to polish,improve.However, we suggest you start with the basics and then see what can be improved.



### FAQ

*How much time do I have ?*
You get 1 week to from the time you get this assignment

*How much time should I spend on this ?* 
There is no actual limit as to the amount of time someone can spend on such a task.
(We’d expect the task to take about 1-3 hours)


*What tools should I use ?*
terraform , kustomize , helm , plain yaml. You can generally use whatever fits best to your solution just don't overdo it.

*Any other clarification ?*
Just hit reply to the email this assignment was attached or devops@verity.ch


# Horme
A doggo pet project to experiment with Cloud deployment strategies

## Setup

Perform an ```npm i```

### Run
```
# Server
npm run server

# Server on custom PORT (defaults to 3000)
PORT=8080 npm run server
```

### Healthcheck
```
curl -f http://localhost:3000/health #responds 200 - OK
```

