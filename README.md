# dual-tag-release-poc

A proof of conecpt that shows how we could split deployment of terraform and application in Personservice and Consumption Service if we implement release-please there too. This is intended to reduce deployment time and minimize risk if only one type of deployment is needed.

It is worth noting, that while it is intended to run automatically, you can manually add or remove labels to manage what to deploy before merging release-pr to master.

![Alt text](Deployment_workflow.png?raw=true "Title")
